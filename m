Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C825A3D
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661230853;
	h=To:Subject:From:Message-Id:Date;
	bh=Y9rwNurlP1XGtFCqs3wvr2dzK+WEvrfrglaR34BL1uc=;
	b=X5MYDzZflkDbVKPFjb4BgdGtAGQbONEadtomIopM0anIdjNQbXsnQqeTUPwJs9KH
	gvwp6GHTrLnSucvSPhoR4VDIMA2H18gMlzZzaLZ5EhYIQD4FnODflbhSuG9pqLL+1gP
	trDkStUgnRuwnkBWlOVvp4b48f6VK+d9wwI8hCpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661230853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y9rwNurlP1XGtFCqs3wvr2dzK+WEvrfrglaR34BL1uc=;
	b=g3azAfgKXFzdEQVMYSewz0b/g5A7hl/sohLUjebt+ijQGezI5J3uSVLL8kcIi3Qe
	hUaxwWNeLLfZKL8b0XL3B3HHzNgAuk6U5gBRcr98GCsxyAJcPbemnEJm3eAxhWJl8DA
	g2XGvLl4VRqij36emH3/6hQQuB2zlVT+Cf6Rt9Mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c91329ca-90110129-a9d4-4fa4-b67a-6cf15b7fbea0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ff1177bfe4ebf98886480744697baf59233b0aae76605a3ca64bf4395c939f1
Date: Tue, 23 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661230852
