Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE3E2564
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646200884;
	h=To:Subject:From:Message-Id:Date;
	bh=JPJiCxB/K7gqewKMyBFVh9c10KE1rB+uHPaNWAnrR50=;
	b=eet1RupgG8qma9AynEP+T/R0ITJttnFqB2EDO4E6+V4PtuaLPbvcPgi0dcaZBBWL
	y/4kSuCi+ds10w6xvpSA+IoCVWMYK7aDHiaBiVXYVZeRG//aHSfMB0BwVMsd8RguUxW
	nMYiN/XgRBqJfqptxufStgOik8NjKB9nPgtavIrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646200884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JPJiCxB/K7gqewKMyBFVh9c10KE1rB+uHPaNWAnrR50=;
	b=H0EAqc4qtpx0Vx8BG+U6YsBfr5dNm2wpDaGDT+K5nm6P8X44+z9eOCvkFAv8dn6c
	gp9gvOfhWxisPDKP3QbpjFJ7Njfa+tSJMdG6Elt85dWXQ1dXoBqBAG+zLJGqJXU2DP9
	Jgdmcv25gp0LGh4ovksjFpRYBsdYx4rawfGbKsU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f49380e4a-ad13ca80-039c-4f3c-9db7-e7090d6de404-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d744a457b78a77e9dee8328b9bfd7305649932968d1b6f05ff50802580eff1f
Date: Wed, 2 Mar 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646200884
