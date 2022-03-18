Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9562F5115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647630984;
	h=To:Subject:From:Message-Id:Date;
	bh=B9OIwUQLxfoB6Hbc7N0Rf+FpH32RPNRnWEUkxdC9ER8=;
	b=Appm/Dhcl3J4fLmIDZbbVYIHJyZ73I8zlGoqgEkAOEV7kqXwK30cIMv7wCyTHG7l
	BqGpw3icmrl7eMjKLsN+H64kQhgzDX7kWhQkLCGheBal86We+jBE+ASjksXcgjIOdKn
	7lf3zehmplkM3S7/uKb2gu296eUtBpcWWlGlYv3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647630984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B9OIwUQLxfoB6Hbc7N0Rf+FpH32RPNRnWEUkxdC9ER8=;
	b=B0QdKZgExGT+EIKHCzrcLk4EfvxJVWp1cItLzh9fhFGWdcJuEohiLoCtK7E9PE/H
	LjCOyVCpPSIlFSA9Y0cInuFvxLdA+I9pkwOfV4jxJ1Dr6PHk1vGYx/P6wJ0AZRKomRq
	1x1wtLEWgDVVDCCOasYTAzr5wn+ob/hLMdhcnoSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e75a660-874e65a6-c747-4070-afff-d7a5d3d179f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe6e1b5f2a2d5d0b8edec36fc3d9d3fc86ceba8002a4e2eca801c1f216e92516
Date: Fri, 18 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647630984
