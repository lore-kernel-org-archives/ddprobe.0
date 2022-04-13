Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D342F23
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 20:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649882758;
	h=To:Subject:From:Message-Id:Date;
	bh=dqOoCEr5uK6dZkyOwCM2bADNkZoqYvX1GmAuBocHEgw=;
	b=TG4QKhyby7GPU6gg/G8Z82klso7gy3tjS6Ehc7UxK+E5FAGujBHLIIluGG7WGFAD
	UddGv8RtWN8aYuK0Sy80QxtYMDs3WyPz/bV/bJ/Udkf321SVVzK1KLx6vrk4PHGbe/S
	0K8jrbhCchrZPHcUyyCkf5XGmPmmZUZc5DM0Z230=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649882758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dqOoCEr5uK6dZkyOwCM2bADNkZoqYvX1GmAuBocHEgw=;
	b=fZi9lhGi2+0SsvC6UXeVqQIcKV7X6sTuObGPJoR5jlTjtU5HEi2jBjha+tm/sRFp
	YTtCwLWMA1hv9KycYX5+PjDUn58O432WpFU3yo/G0T0oVUA0l0IwLqinLQjwhN+HhQZ
	7osb9+gLICpCCBZ+r78XnC/XS8/Y+SaX3+Zpl//4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018024acfc94-ef5a0068-ca5d-4da5-a301-5b1c4381c9a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72680887d7f84909d3343d3ea8f02341c3f099d91228ad964c66374051feda74
Date: Wed, 13 Apr 2022 20:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649882758
