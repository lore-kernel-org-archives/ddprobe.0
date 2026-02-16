Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFF1261B9B
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771281294; cv=none; b=LNaP1gsqzkzDDGT1Bazk8H3f9XGJsXEP+Xoq9+CXlR63JRqz0HoCombQSebPLmjJQmTI9XmWl3tE8SPHyFAFPDPaKj3m3EiKh9wNCoWIJM7A8FvQDcti30dqV9l+gyAdSBL5vJtoHuMlhT6y/0nlRpDipOFx1eb6arCloEweIJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771281294; c=relaxed/simple;
	bh=Wkmw9UtzHBSbxE+gMWuWB1W75SSCVH1I+4QqEwNajt0=;
	h=To:Subject:From:Message-Id:Date; b=K9jJXRg+gth4+pGkS/wgnLoU2/Tcy7RQpGg4yeBJP4gk7eKDfXmHRujhHWiGuj7q+bXkw65uvs3RZ8JZl6/vZ4enTYRVH/W5UsVizluz0RIt2sNaiMAHTNWgijNy+GMO99quWuijP3T0JUM1Kaj8E++7nvClSRaSyHmkYpE2VGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gS4zMBxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gS4zMBxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB37C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771281293;
	bh=Wkmw9UtzHBSbxE+gMWuWB1W75SSCVH1I+4QqEwNajt0=;
	h=To:Subject:From:Date:From;
	b=gS4zMBxoMlphue49ZSHsUSOXR9w//5N0tLzBalSzNMTX6W/KfsvBPee/ZM/WVm4cl
	 dkLO5m5/WHNOCPOBhr5+TsZyTO8Wrl3YDWqp3UBLxghxPOh4l9ykK5wOREOtjwgDZl
	 gnwGNJeJ/jGdHt8HvJb9X+4fRk83NbAxbXRnxUI/c6yT53yTxEKldLiRSkgpt6z0zQ
	 KbpMeiGmcXXnxML78WMtZncRnP6LP1+Uyld1QEWERPXuLGGrbJxjSBpaWEJ5kEQ+yh
	 sytS4XkfFJmx4l5wTwwppgACbFJbnZcyzg6y6BZ8EIoRrSoI+cIRnRDq/+P+/x5ADU
	 hsz3ZNhrLlXBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACEBE8383F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128129358.6637.15224336072460624464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42082eb138d5ebe12ee2f233c2097256895c1b01ff91c838dea014838f65985
Date: Mon, 16 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771281293
