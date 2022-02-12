Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EA820E8
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 02:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644631262;
	h=To:Subject:From:Message-Id:Date;
	bh=CnGZ4TF+VgqIbzU1dFW3zwvnrorCNIgOXm+/2Yn8kbc=;
	b=OItkAVSWKcKyhQSbEpBPoNCZniye+NDJMWA3F1yaCT/oQlzZQ7YdiJRp2PweNsMf
	1sw+p9aXbldl58gEegbykroRTSBuV9ILUZAyvihsuwSIAywPy/OZaS1PoFfoo6GRxxG
	QweXAzRd0mmbYFJXvP+lQiNpPlDCswkwA3X1ItVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644631262;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CnGZ4TF+VgqIbzU1dFW3zwvnrorCNIgOXm+/2Yn8kbc=;
	b=iWRh5G8NrQDA8Q5+2NyKWoX/ZIyMYb1fCmdq5AsskV9feCbU5cf8tZs6QwI9XsL5
	KQXzrmTrAOOAngzrQAUIxVHYENbPRJ+zBE61F9dQFkTyKxZg8P26lxIghmlyEX5B6XN
	DUYZAdczY2o6kx99aYuZe6IfzgF3/sNIRYh07yX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeba9848d-8c7fd6e0-5c0c-479e-95f9-2e4a147c8e59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d53919141495d72c8a383326708af3cf69184484b7ec118e6d45875a5d95a4f
Date: Sat, 12 Feb 2022 02:01:02 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644631261
