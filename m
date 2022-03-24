Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276D67E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 05:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648099918;
	h=To:Subject:From:Message-Id:Date;
	bh=gmMGmwO2gyUCCSAJ2aIC6+aBBLLoDUlfG7owAONonTc=;
	b=QgWsUPSBBHU5jowv6nucPw8NBHRI0gm8XT9eUewhNYxfI8wYGUzAcTbM9fXbIid1
	NPep0QQXzLFitLyAFm8dCcLK1jwbev+b647NlBixj9BpwA4iERDPiIKFMML5GFJRwi7
	ZRwveSQnRVqU35+AZp+GqMPhErhzVL8BySj2KVCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648099918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gmMGmwO2gyUCCSAJ2aIC6+aBBLLoDUlfG7owAONonTc=;
	b=K2CvV868cSBvLOEelFBOdaXTQArj7PaNoAVA0CyTAanQ8PfgB6vwE/vKBYrgXDwU
	9xko3ACBcTfJwjIaQ+gVJVGK3ySiCL0gnZ196R8lV2JXke7d2ToFgb/3IyRs4dXlkM1
	HLR3BNU9nSN/Sei9yUGulToxfuwEliP+q7lV/V3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba6901c9-70b56042-6e94-4408-bc0e-5ca286610e3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a899b02e68d911da179e8898c28375e4f0dfd4798772600d08b23ed1a06d94a9
Date: Thu, 24 Mar 2022 05:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648099918
