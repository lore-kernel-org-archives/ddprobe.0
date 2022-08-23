Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9954F7E9
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661272253;
	h=To:Subject:From:Message-Id:Date;
	bh=pTlSVs2SiqMGhuexoRxfUcADdl3RE5jGUslI4ANLs/E=;
	b=IWaiKC73ljrpaLB6fPJ3X4gZe3lXzLg9QyOV56/UPLyl6tfyEN+Rad4Mx3KPDGAS
	b9oShVQh26yNw4qz6CBxBZUiQViQ0VNv3ATiyD64awZwyu7w07fSggPscVm/4lTm4Gi
	VHVg8nbPH0c0oit1gdIPafAFQSoxPrrkSR2q5nKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661272253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pTlSVs2SiqMGhuexoRxfUcADdl3RE5jGUslI4ANLs/E=;
	b=RlhD4rkY2z1oNO7SKH57n0RxhoDNQt7zWnsmbD9SLwxX1vO8TP6qIp8E6AGY0i2w
	DXDhEsXqKbj7tcvbws/DGPBp7GRyLKc8RZZpeVjfjMgFJLUCMsoyGdANKOYulx6L/Sj
	2VNGrC9ZS58ZeyISMh7apWiMhlrRBJTF6mqodEQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb8ae09f-925bb0e5-d1c9-4f9f-a552-a76ee1284963-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa4ca8b4a2a54cbdc813873b733cf6169b750886b781f1140677c651d33d46c7
Date: Tue, 23 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661272252
