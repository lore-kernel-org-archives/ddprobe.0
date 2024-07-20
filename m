Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A651B86FF
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721506554; cv=none; b=RPxDe1CSg2RL0Ev9n7AZDnoDEGcIsKYHbIsWuZFgkarmenQARdSGAYNRm7pVHYHCDEew+/rTRNXCdpcQtGbhptbBDlwb33JRuaLzQEW8mQGhtH917RgRL8VXiunfOSSA0hsy2UfAPPHktLms7eZnOx/DEoUctPgpStmJ8kKJZs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721506554; c=relaxed/simple;
	bh=RDkriYw+QQ8mrR2hCk5OZP6QJgBh9ailYCofOWCVuww=;
	h=To:Subject:From:Message-Id:Date; b=UFfMgDYG3FYsF5iUAgPYGNUuEOVB1cKWYYeh+XCOPBs5np6fKC2NmmhrKI6wkcwhNQ720xE5ER2KUqTh4uzFqEYKfuT1Rm0vR7VxVVodHGARnXNkYg8lXQeuhMbjO93M08JgeIL/7clBexlYFxnpgr3SE+YUrlxFJBK4uBwj33Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6kxxKfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6kxxKfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1C5C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721506553;
	bh=RDkriYw+QQ8mrR2hCk5OZP6QJgBh9ailYCofOWCVuww=;
	h=To:Subject:From:Date:From;
	b=V6kxxKfFQkjq7Q/io/yJVi/vr7gcOwXzsK5mmHYu7JacLcaf+EOVnWm4eKYxGLjbb
	 evo4khqj2sZaoXUZ5P4Zv6cLbMNGIF6q7OB8qAQdw1ck2HxK1XWLiho4NvR6KlOcC/
	 oEOOiramMkQ4ZRk1IqLJdIK6zA9eQh82qjeY+ADDooLd2OQnu+6An471I/VoxM6a48
	 ZN05F+9I1H7rXVQzhdEaG/8ZnpSMZLrQBJ91UzEDy6G5TuJsCiIWhWgu/m+r+YOjay
	 tZlAX5mBouEVbhfokoR/h8byMheLNkm9B/zw+sC6anJBJEBDPNAP0VmP/VahVFlMC3
	 rzrhRtQjKe79g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9A4C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150655360.15114.16530389650096142561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd9fcee09910418272c4441ed7bf283145220ab47059cd146028a0579106560
Date: Sat, 20 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721506553
