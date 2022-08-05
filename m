Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A002FA49
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659717053;
	h=To:Subject:From:Message-Id:Date;
	bh=AdQK8pMn5j/AD8RLNIJybhTsDCR7Pr6/9AZMgIWpcFI=;
	b=PHrvOPNv8rWIwq40WnZP9rKm2eJ+9avCyXn9fNEn59aPsKMc+cSFgZRe2XEd0R86
	8GFpOCKONSDEXFZ3FI50pUx3LMTubOft+HoM/60vUQeu2ojIojGmMSn/uoXjaUtgGfa
	pnyUn+wHLk1wXvuQzE++WpOIy71mdTZDtTd5sqzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659717053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AdQK8pMn5j/AD8RLNIJybhTsDCR7Pr6/9AZMgIWpcFI=;
	b=cmzS4kYwz8digxjF44Xu0FrsIjI/sSi3ZM5mlyvplquxxrj/KNAQ1ESRyQpiq28O
	dFRdZgyUYenqbzAOlyyCe7AwjhWFAoxb9Efh1N6QoJxrZTcXzuhwlmPRvVBah58NczN
	kw7UxZfT3aE2FlBGVAv9ajvLWrmXkObkPodUz3+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826ed868cf-2c5d3b8e-8956-43a4-b4a4-f0c7cd12de60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 580e999023b697aff598a00d938138141a61a1410e7a8e55e9539321277c0057
Date: Fri, 5 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659717052
