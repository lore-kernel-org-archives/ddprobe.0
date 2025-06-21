Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3670118BC3D
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750493394; cv=none; b=EwuZ9SXnaXR7nXe9QZpdPBlf0m32dEOK2LOZBure5VahfkXVqzCyqLH6SN50xoS0BJEsEPCfyieLmDfpWL4k15RlmWGB9pP+TtVMgmTNYy/nKHeZyZGc89xP5NI0PgdptjOpKFyyqkkpp7IALNyhjUBUOWw1tUMNc+xBP+O8HeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750493394; c=relaxed/simple;
	bh=CxrO7W4+SVYxJIIQIm3CctQQJoOAxFmCSvlGy6uHi28=;
	h=To:Subject:From:Message-Id:Date; b=Oy0L262k+DJxAayrFaV6j1iJ/XAyRr4GyujWf4Ou/F2qXBu5EIncZygVKMYSZ9M0w5+KagVYUpqSahwRY8TFkQPhThtdeUrjKL+GZPv/hISF5TXSuylO1/4aGsAiLfL2jTN5WfzupmYjiIwHzee9zW029q0MUYU/lYnRmDXvAGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBfBDtmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBfBDtmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EEEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750493393;
	bh=CxrO7W4+SVYxJIIQIm3CctQQJoOAxFmCSvlGy6uHi28=;
	h=To:Subject:From:Date:From;
	b=rBfBDtmOnDHykSzccLU48UJYh28Wr7sOHxbAM9FbrgKG9bLEPc8uZTDOXVmj2kl7q
	 QjQkXUwbD6HHJGT8VqbQTsZP52MyllGIcJQ3akt6blpOXxLL9Rtf0DWhXyp8WMa31/
	 Tam4B9rrMRjAV34I90Qe28BX6F6e2YmnsGxn79SG78cYfGZ6Egs4TOaTeYFYRIl3yR
	 IilfnL+mfmtuAnM2DvbGZLCizF3Lhur28jfbXCshCZkMADSjtlGdhIzysvGb1vNAOJ
	 ttQgWpDZW3wq8krrpLXJ0GiQ2zF9k5Wv2F+b/9UbCaOzLsrhyCb7yMsM8z37MmEYlc
	 K3XliBJhLv9cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E891C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049339357.24176.10077297201326593780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4965567ce6efcc348edc371dab8fabfd7aa34603c9a060a9097c312569bd6d9
Date: Sat, 21 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750493393
