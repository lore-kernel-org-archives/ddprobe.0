Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA8321578D
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773812094; cv=none; b=byLwdLKZI1LDUkyT3FpCMR/0pmCNjE6RyE/oA4+9KZY2Ib9lNN4jdvYHb7MoqGMcvtq0l073VotqdeidvO+Z1cTNZhUcfBxB3PG+agP4PYyBSOmLdzeoQ2u6LfG1CRABSlpDQ2tYHzB+mJPr9xM64id5CrYAjZEyG1O2OY8bDuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773812094; c=relaxed/simple;
	bh=DVMaln2qArIqZvFRt7Fgv8Rg8ibOcWZf+db4VkLN9vk=;
	h=To:Subject:From:Message-Id:Date; b=QPkzbbF3yHtzRDr5Kv379F1I1ZPVL04IQJDfSxHPcdIN7nLYzvPq+2FEyJyJGK4DEyYAI8WLxZGaM8ZBbXWKyJC/slgdYuXaDOS6tWW039DxxrS1c9a42wtrvhSH2Dxz0G6CojPDzF/d+cUC4OK1mW8qLYbAzpll44QYaTDKatQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbAO8Ndf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbAO8Ndf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A881CC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773812093;
	bh=DVMaln2qArIqZvFRt7Fgv8Rg8ibOcWZf+db4VkLN9vk=;
	h=To:Subject:From:Date:From;
	b=BbAO8NdfWqPl9/nnQjmUD/N/r1WQbnaC5H64W5SjlwLzx6Y7jU+RGfCx9bszG/vfE
	 3YjN3pibwe2g6OM9eovyd0RKXi87ZBb5kBsvcurSBk/qWveKwe2j1knzrgAx9OBPQn
	 f7O7nhf+uw3XPKzdmVc+E5UlQOHVirjj5QLIBJzwv2W8Pr6gULA2tjpRMuPipxZZyc
	 ZTou2EzJSFaD/q7idu4EQY00Ty4ECgaqa6IqA2MGXALZ/ZzQtZLSS92rr557bzzf0r
	 qpCXHF9FCOOTnpgdB8g8zSjHCuUyrxxVzWCLwOnUEqLOuzuvjkUqSEL1gMg8EyhT6N
	 3J9oTSKd8fusQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953FEFCD0B0
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381209358.29439.3387449089688661900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29fc6618c40b7e3def8eb6c236a9d2e8da10e3e371fec1cc034025e64057567
Date: Wed, 18 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773812093
