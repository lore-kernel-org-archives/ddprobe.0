Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B4C2F28
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 16:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653236339;
	h=To:Subject:From:Message-Id:Date;
	bh=DajFugKKEEfQRJTPSrBtsPETkGNNfUeRtYH3AMpKeTA=;
	b=E4X1UJPn1Xl5Jm7k0SIPfdAbrOO6BnwGMKWVPpx2Ezjv4lxlZhXl9xNWIIHxIkJ3
	SDFPqSrFoKkj+ZPFLv6iQ6EVAhuuMEW+ySSKfSt25dTZzSP27m5/INbwq8XCtDw+pAL
	ZS8mjuSuT8lNjmMla8xn8DbrgmQP8IigmlB67Ewc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653236339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DajFugKKEEfQRJTPSrBtsPETkGNNfUeRtYH3AMpKeTA=;
	b=dv1dA+qn3UJGchuAfFbRRVr+aFdxy6mmddj9H34u7ty2SOi/45OnciecJu3Xr+Y7
	ppN/LomshWQDMgJ/DIzrNO//D0jgOpHu86F97bzpfk9kj0F/Qs9vzxEkAeePFIhQZAT
	oN/HbY67IXt3GvXtMPS61rD802OW+ETmAdRCmBVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ec90923c-3bc8a91a-8bcb-4cf8-9e4d-842b61334842-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cbfefa21a9160f87f1a995cdeb306fd78b84618ec8457205631149a6dfac01a
Date: Sun, 22 May 2022 16:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653236339
