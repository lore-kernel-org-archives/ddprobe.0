Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1923236
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 23:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650756898;
	h=To:Subject:From:Message-Id:Date;
	bh=UWe0xHt00hXLaQHGE3Yg77uGAdIl9S9lNSetsEE0LZE=;
	b=GPYHq2KhnErcHnQhIq4YEMwfk96zHKR4z6gmLlCfh/0oeKryFXkW+p9vIA0IC/Xn
	LjVE5Ocj0Yjtrz71H2DeXtvZFujBd3r/I7CNODkl/qDDzt3rljNP6DN9uqqQ1TxM+7n
	LQgAa/Z1MMHhFNq9B3nQJcWzFDW50tmObkmMenUU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650756898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UWe0xHt00hXLaQHGE3Yg77uGAdIl9S9lNSetsEE0LZE=;
	b=gZKb+/A/ILsFisWAmLt9/taMlIfXSYMxa7BVsmwBPdMGqnA3+aVPpF6Yvf4VIMXi
	su+c7C6dN1g7rEmACuOHx88HbhBFRT14YZz3Kz7OPLAIzR1pzcRpbyi/vvwMRq3p8zf
	rmUf46M7czL/mtNwfYA1hhZPF+XP2QSXQZWG6Spw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018058c74dd7-ff3544c1-bfd8-4cb4-abd0-12204e9b6454-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8480bc17059fa1084054f535ce04c186d5f5931cd57f1ab9093b834229e0987
Date: Sat, 23 Apr 2022 23:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650756898
