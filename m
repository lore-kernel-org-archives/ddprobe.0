Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605A515A2
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660875652;
	h=To:Subject:From:Message-Id:Date;
	bh=DR6rS53lxUQtBt6oROPJOrUiwmkYmLNQNdODhSaU//E=;
	b=HV5UK5yx0N4o79n5yRyXBvcZbVqcUPrGSPrwgKaJkYpW1wqbPzpZVHYa4UtYLmbu
	pHAjdS/qH4NdAmm39HF8WXLmzRpUHu1bycH6cS8ScK/vkRFgDDYwO2UT/XfRh/78Sva
	TWzgV+RxhyvK8d200ylLmK9GCgrYibnpi72gF4uY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660875652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DR6rS53lxUQtBt6oROPJOrUiwmkYmLNQNdODhSaU//E=;
	b=d0RsBPdekHwbSoPAFPtCwnQvgjUA/BYHCc7hlj1WnsWsmw8POLc5I/M+DEwu7f2r
	Mo1rd3diiamgWci5DMr/PDfy9Cydrd1aR64Sed8SxYL42ApXd06RDmvep/mIQORnfkH
	p/eBYNupTb3wGWyrw1GBq2KG2PIXhPjIh4+XiUNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3e73dcb-be80d397-97d6-4a82-94c3-088205e889fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6892c8b1846012871677aad9c410ccda531399d08da22325796e61e07673caf5
Date: Fri, 19 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660875652
