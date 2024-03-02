Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E66171A5
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709382497; cv=none; b=aCYaTXPQioMTi88E8kQ/u0Z5tXCF9hod/THHcmlbfSBgHnK0SRZKTusjIT9ntzdVFRROoTq+RXYBMObfN9cVKZRLhtwg1S04SnT+mcQen/Lm233H/7QElnyfzr1f08q5qQ101ae3gBGN5zwxpdg88iDPppF1WQv9+wKpEIxas5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709382497; c=relaxed/simple;
	bh=CI0owHuhuD6O3c49YvUhoQfAyRNWOYNhG/nQnPhiAKg=;
	h=To:Subject:From:Message-Id:Date; b=P1YpRzjIISQpWb8x39KXdtxGuXKohUoE1hQQjK8sPApksaykwlW9fUnKlkAJ9oPwZ+sVnyBYpB7nuWicCnHUHJxGw7T8u+NjESqtY4UDRILuZA/SBukbOkz6C+fq5tKsvezvIhvvXkuUw/oR9/u4CKgnKm0R1ZavU/YaDJt+G5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+5lEFps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+5lEFps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB21C433F1
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709382496;
	bh=CI0owHuhuD6O3c49YvUhoQfAyRNWOYNhG/nQnPhiAKg=;
	h=To:Subject:From:Date:From;
	b=q+5lEFpsY62ZoaSZWUlJSRBZb9/eh4JrWNOm8JHdOZwyDtUwa/fxegnhS2x7J4ed7
	 doL7nfYqxeUCiInAdR/l0URXIKiPW7AeAtFv+Sy/W6PkpkBNlbpjMfgHTjvHWaBhwL
	 ZCQwOnPnXlpGb+S+HBqYNJQDIFwWqQf6VLX6u0MadAT3Jc33LFi+FSMzqeoRIiPPeM
	 v2tuqxfYTfgu8G+0Q8SBDldNA9NnyHOZy91vvkYnhBr6womrwFrJ91Cv7UDTgdgLPW
	 MCIVGBn8z52oEYKvBEJYYKOVI2p+oJbbRlhnr3N1vCzxYA/hKZ7SsZFUBPAnqQvLdM
	 CrDAijw/pZlrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BC3C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170938249637.30239.13826154196680974596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8669a987b0f7ce6f1585c569fbf37c587b6379f4c6b5b43cc8405218bf22c40
Date: Sat, 02 Mar 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709382496
