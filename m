Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDF01FC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729942554; cv=none; b=OeeeFaEe6dWMUjk1DlQsV2MY9kLubBcPngmrE6aKaGIthej7gi5GLVCMy5YLrxonpTr6xPhoispCgNSkw9MWg/KKuxmRw8ozV/Sw13eYOE+GudkGmLHkMq3hAm2u6J4czPCC05/j3xYavPltVAwT3rzcMQAZgWuii7NaOHeXoHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729942554; c=relaxed/simple;
	bh=oUvQ+ed7FWhJDYZuHAjUWBNpRhNWQCqYI2XqAMMgvqk=;
	h=To:Subject:From:Message-Id:Date; b=u5zwpEeQFSZ6iiuwV/BHVv4DCRjgBJUC7BEsnU+bwq87dPOnfshwKdKb2gjbd4OaY1HmzJK9nKOeYh7o7vX6/WPsuvtiQax0Z46frE5Bnb/SYKBX6Uv02dseQRGmh9zkBwOWIvOeJ8AxXiwe8hJVPY6NpkjUMZYI6nUxztca0Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNvTzwuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNvTzwuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC68DC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729942553;
	bh=oUvQ+ed7FWhJDYZuHAjUWBNpRhNWQCqYI2XqAMMgvqk=;
	h=To:Subject:From:Date:From;
	b=LNvTzwuWcGMyHJdZJkedBGO/NT9cMjnUQeFJyTy6hZ6I1R2KA2GqY2QXTNxsyqutN
	 i1HE5UBIRW3PXmcKQO8H03JUCI9SD4QaNkKRvD97J/4ss5czmxLZ5++OZM2l77U7lB
	 us+7V6dVSNLCSNUurw8xNA3eiEUe8HaN7L6wT+UuGD8710FoOw0z06bCTcQf8z9qbo
	 Uxv3floDs+dtL4psG1E0TlBtHRf3WN3DySDn3j40lPlmD165VQPHrTMnmz6bMRwaJS
	 H6mx3LF/EUDwK6BuaJviajjAo1EdYlK4l9cN+VOK2FBfpM5WrFunI37MsgGPGpcoHt
	 KagSzhc0QXmWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA95D10BF7
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172994255359.9157.4917972090086514230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132d8166959e2bc9b53ba76d69742563691d220f34c39ed59da59730859fd63a
Date: Sat, 26 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729942553
