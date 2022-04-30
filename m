Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC891FA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 15:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651333918;
	h=To:Subject:From:Message-Id:Date;
	bh=mUsO7JqGdOhOWvXvi18bmViRcTZYzdwjTKtagwF8a80=;
	b=HLjOcf1pOWP1gY6TM4Nm8rosR413bRnS2SMZLnTSoyRLEk9SiEekazqh0SIBWpem
	YWxk+1tgP02LX/nDQ3ncBY7tB5hm/vy1cYcFjlak6iqo0AQJSU5DQbAcDV6qDzATED+
	54AgZbovF5tVYrod9Mv28VE02KtuYAbbZLe3F1Ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651333918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mUsO7JqGdOhOWvXvi18bmViRcTZYzdwjTKtagwF8a80=;
	b=PdYTKuJqBfp/bIJcQPBI7PuBmLdWMWMKFgZJ1dicSbnU66OJ7U1lasxyPt+rObIe
	ltl745IxOppXK+S+xpZz3ysgxMKmHsCoC7WmsTIX3HVFixsSnZ4UKEwMgVYOY7NcI1F
	lsy6gika2GLeO1ZBA59/SBPI3vrxyINphLpLXQZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807b2bee15-e8cdb248-aa92-46ca-b478-0eeffa050230-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a50697617301381aea164c298e6fc990b6a9026e5726a97f5e4511e6bb0c98c5
Date: Sat, 30 Apr 2022 15:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651333918
