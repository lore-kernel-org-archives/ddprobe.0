Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4432C1EB3D
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748113794; cv=none; b=iQA9ZjGlBsxj9LxZ/zF7kv6llS7YgH3aBfKbK5ONsz4n0KC6nICeeDCvG92+x5Ct0S4mPeJGs1WJOsBR4a8O+qURghmb0ATr0/4aiTN1gj36peeWuqRgQAJwxnPeiFHjgKHl2mynQ+sVcM85//y030Yry6MbxtbvStW/N5Lx5Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748113794; c=relaxed/simple;
	bh=+XtwblXdhTN/OU4q65lMjEz+kMdpqxv9voybi/RDt3k=;
	h=To:Subject:From:Message-Id:Date; b=vGFd/aAtaVXh+ZpsDbS+E28GE3MPPN3VO9+ALKRIxTqF2lk0K/XsgQDLFPlMHOb+DNBTiyy5svC8FGP1KpMHxK/UtU/mFMy3TOm6JBGpYuZopJkLggvi/Xd3yukVrx5nBc236v/qnYz6RECpFqAT0Y+Fr7VJNUG19OJEbfcuFEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbHwooxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbHwooxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3F9C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748113793;
	bh=+XtwblXdhTN/OU4q65lMjEz+kMdpqxv9voybi/RDt3k=;
	h=To:Subject:From:Date:From;
	b=UbHwooxcmbzcb1yWWbQBkTmJ3ECGFx8jwjgPnpCdedV7epzW1Db/aXHfCHXtpXn68
	 To2j/rQPonClRnbRerSBUa2NfJ6vL8GH7U0+0AMANDBF+xeTzT9HNHK0cXx6sX/M/f
	 1d3NT2BhFD94e9KbPj1RQSVFelv/Y19GGFoFs9R/inYidRsId2mYhiXjX6h9Dg+CIg
	 /HOxCIjlY1qHW3ySId53zKqfGNiVAUwtXWJo6IUmLZV76YnQY7XRkjMGd6WFyj+qOS
	 2q4MudHLTObmVJA+MEJjhemnOZcjJmMixEcoSnNZnG7KYKkpubggJjiuzFUUSxdH/Q
	 ifFR/++jYavfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C2C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811379358.24151.18309977893487218311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a4b022480f403d4da0234ce851613fe97af27036b361b85db9690ed7cbf901
Date: Sat, 24 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748113793
