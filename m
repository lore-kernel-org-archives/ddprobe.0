Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088C51864
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 20:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653595799;
	h=To:Subject:From:Message-Id:Date;
	bh=oJtmb9kDN2QEBRzB13ksn6BF17MlljRDXj3Pe9MFb0w=;
	b=bXoqBFFGp0wBWRsgrksw6HA5Sho3Ju6v10N4dYL0RIZUFIV4eMLHlJtf/pDP5qeB
	FQij5j+zTgi8k7Yb98IQu/QIxF6/hnqf18XPi3HlG83UKXD0pU77umKn6IiLAus1I94
	PFrM8kLdlEY0fcprmIZdUlxLWlqMVuWjdORiM9U0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653595799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJtmb9kDN2QEBRzB13ksn6BF17MlljRDXj3Pe9MFb0w=;
	b=HNLvUBCKcvhS2Xb6ak5LI1LALX7IsvwPZQLx/AilI/qdrzaVGhby0LtP0hah/c6O
	deo//5FZXDuYobMGaOvKrSXlQ5BgCtcg//P8swXpR4pKheptXEvEMLpjM7siP9LqVt+
	HsQgkFUWKgBdFqkr9cfAfTVaC5uYpQd1y4o3YMV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101fd7f69-0d1b3791-efd9-499c-9505-cca7c1d5299b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 956d123b3c25050323fd39bcc3f36883eef8858edc2cfc1c0c5c75943dd9ff9b
Date: Thu, 26 May 2022 20:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653595799
