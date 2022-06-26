Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061292F21
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656266812;
	h=To:Subject:From:Message-Id:Date;
	bh=rSz7OENLUimSBZ+rPFv1f0DTqSIW62kZMkcvNkE42CQ=;
	b=Si1uffFkoGev7lyQvPQg9aitJN+Pr9VCXkJ+93d4SSfObJzJ5h9PzNHxea1kcQlG
	6qWII8/NVYnuu0I1MI+Z3HuCjMjfpPlvBLhEQaoLC+0gF9R5mzOayt8ckUTQqTaADyY
	bVFylH4Bipeke/Bq84plZW3z6krJm47SxjF+0PYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656266812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rSz7OENLUimSBZ+rPFv1f0DTqSIW62kZMkcvNkE42CQ=;
	b=XTcGIFC57lkn0aH7EAL3JOMn3MWqkr3owoTiICplA2XDxTyAZpT2CC+PYU4txYAV
	DdW2h2S/hk/dZclNIi6eRcm3F2C49vWoOwVbBdMwwH0lkZ1JcUzk5IFne2MYg2kqzqR
	oxfGmSLup4Ui5jV3Zm1o23KQq6WkZIkwB8GMY0gs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a131eb70-bd425632-ba7a-4226-8698-684c51515827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a23fe1ea1344f2469422444055c7a3cb294d77795428f4ff7ddb66d0bb851dca
Date: Sun, 26 Jun 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656266812
