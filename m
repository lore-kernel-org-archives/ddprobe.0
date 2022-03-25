Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6731E7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 04:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648184218;
	h=To:Subject:From:Message-Id:Date;
	bh=/0jVTvVR0er1Fq/C2MkK4COrvEhWRNNv19MtFeVLmb0=;
	b=ksd9GVBzKI7UCEpkxFM6e3IZfm8rDkpCCENzae+rz1c1r9osFpkFAWaf6mm0XORJ
	ZePjtwKi1XJganKq3UKF6GOOVpgj4WoMyEfCF3L3aiaIBTZ4M0toQsLn6y8lFl2aiUE
	vdjUIkjSu2N0O919y+JK2lHsLk4AGvgDgOfvyztc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648184218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/0jVTvVR0er1Fq/C2MkK4COrvEhWRNNv19MtFeVLmb0=;
	b=a2Bp73eoRJVbt3b0/cBo/K/HR21kmmpDGqqbcAs8Az+QOvCsTjbwxpcypgPb1Ab6
	+3pCVOocD05Kif3n71pmvbn99pdowD3o5Mog5Bi+hGee2yhYaVhN4G2zPTzkeplmaB5
	S8qL65gchWk3cpe0v3au00yvS4WhMEg59D3NWc0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbf6f529b-efca1766-62e7-4683-adaf-c453a625e2e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 031232c17e2fbd9d3b1f90af0360d695cc2df9ebd6e31492b737f60e4d839a89
Date: Fri, 25 Mar 2022 04:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648184218
