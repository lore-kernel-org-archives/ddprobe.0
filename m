Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D05F7A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 13:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652533259;
	h=To:Subject:From:Message-Id:Date;
	bh=i4tpDhrW4lV6ieHA0MTzW3/0uoRnwR3l+V0p675sjiU=;
	b=X0CrucKoCVSX/kgERi2cLnnJVB1MOv3nVj+DVXXWjHGGPTeti3O0Txy7HUSAr5ty
	stxEA+F9lavHxCWUq0fzY7kSWSwDQ2WFIT+z8FHBpByxiy6a3ODVcmAKtXNmQVrzQR/
	bQ7x7MkXK+wzn0uML3wHiyKztPCiIcG3IUYogPy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652533259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i4tpDhrW4lV6ieHA0MTzW3/0uoRnwR3l+V0p675sjiU=;
	b=Y4eD6BLq+WKyoCwKifwAh+5X90Xna/Y9yxY+YwpgxQvopDXs6Uk0H/quGSI38KRI
	v9OCMG5FlGd59a5W91V1VwF+u0o/0RAUYlHhY+pcq1UxAa6k5X8N0893+6ocwLs83kR
	lL3NEFjyn5jBU1sVXOnME6F4DgvFRVWUfCKlrg6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c2a86bff-66c5a383-d969-4c5b-8af4-7ccd47163024-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 293069d966ad4fa17e679ace3752fbdbfea37b94987ea4b197f1c231d0f14fd7
Date: Sat, 14 May 2022 13:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652533259
