Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DD7187332
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749989994; cv=none; b=I3+4Iw0+g7z+eOrS8yMzKcE6RBNZtINj7okvDpfP0x/fYOOFkPTy9IBZVbdzrgzZV+oX3gbcb9oXK6gAlz4m8ytlJ5G1/Y8vzCMvXsu5q1DkQsgt92pcgsaTkkaDX5+L8FNcsQ1btKpcyNrZjuA5JSpwjEGbX2hnDAMz/73J1XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749989994; c=relaxed/simple;
	bh=cYnbBb+MKwhtMcefhjHxhxV3RDrdEaTXuuNMGGCNTjY=;
	h=To:Subject:From:Message-Id:Date; b=UxDYsSZrA9S2uUE6TSvvaaO4BTCzIl7AJ5pGLKbVL0zl5vF3oOg6jL3piF/fsQiF2J0I3biR6um0lUs99hx8Nqs+1zrmA0kx1ZJG5/Dqc/oS3LXXFzi4Nr+0LdrQkHzISSP/j1bxv2lBUCqoi6AQr2w+IyS8u2+W6bEKpMMWmL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gr1w1RrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gr1w1RrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9421C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749989993;
	bh=cYnbBb+MKwhtMcefhjHxhxV3RDrdEaTXuuNMGGCNTjY=;
	h=To:Subject:From:Date:From;
	b=Gr1w1RrPGHhNl8jEJl1fjxu3yTXh4daouyJBHZqbbBWg34ydh/L6XHIsmNRIZi25B
	 Gvl/rbYUdfv04nubgAuU8Zh32PnHFeVgdytLhPLmskx95WWUJAeim+YXOmoGgfbbCC
	 ZjHbv8VoNj5WjEALzQjWgJ+5ihsd6l41TJsttooE5d3ay1KnA6EW2feTwT0s1sf/WP
	 +mYv8YpFrclDSBRYh9v5Yk8qrqaQYoNj9oJyeMcVbS++ddjGjjGQ3dyS1ojz6cX5FP
	 GOSdQvx9afTkgELIGebfjcOYJRcJXvueQXAMl9zLHfaTEmKEa/pDoZ9xlhwbucyI2q
	 dw9euwjzG9xHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CC2C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998999358.26531.16914442421552363153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46706d104b7fc8a9f38104a49dfcd2720cb392c35afcca3938ad3be73a4c63fa
Date: Sun, 15 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749989993
