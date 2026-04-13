Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C1E3B8935
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776107854; cv=none; b=r4iM4Jx1dKJKGa447SUfH+t0MuPBJJ++c7ikxFCSTpJx5wGC9LL6z0lVJcoGhOuWlOKaFGOienM/dugKEuygtSjHDfNL9ARPeYSuY+XLHfnd+O0avGhe1vf4ZK7+LiwGsrwGaqBcI2oxkU49hzScIDBKEp+AUc2L0gTbAWcqi+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776107854; c=relaxed/simple;
	bh=reb2a18DOw/fwDJVwZuWpm7L9RxGX5jGnqLQDXYLe5s=;
	h=To:Subject:From:Message-Id:Date; b=CF0uDSgScVfhm7TShpPbYiT+5a3oyxbRLhI0/CKjClH+I27kjIu3oqtXMIJ0P3iF4/pF9X1V6C6HUWUTgau4Ntl8/Ah0ZeGm+pl1x0yjm53zSY1TfS+J8fuuGk145IYYZg0c6HH3FbWVEt7mFR6qjL0PKgz/MgBovsGaa+mWCAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVk17c3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVk17c3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF8BC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776107853;
	bh=reb2a18DOw/fwDJVwZuWpm7L9RxGX5jGnqLQDXYLe5s=;
	h=To:Subject:From:Date:From;
	b=oVk17c3UGBP+tAGTc00GXuZDF+sCOWWJN8W4V8tHDM3WMeHKWC8qW0FOGoH7Gm19e
	 GsEB4UnNuOWmAVPeYv0vihHWOpbyO85Y2xLjP5GorU7ijFK+fKd2t+wFx3XpFM6/UD
	 j05gKmLTIYMIai0YZFnC0xrqnWath7UWi7DGeLpZGSHUlwQD+zwC4XGulLdC89M3sC
	 n2rhbfmkve2/styyTgjN4WN8b1dydBCWyqTHsgjfJhuX+bZDpmC/SNuYbNyhqTMb8Y
	 hdnedUCv5qkc54nI9K3Xfem5NtoY8ON8oMv3/l3P4EWcD9U3uXL8zTSLSSgVOVwhNe
	 bj3L2En7pZdvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFAAF531C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610785368.5589.15296188070047606505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b243987dca8eef88796c31dd63b93ac00f4728d0cc1736b7eabba35bee07009b
Date: Mon, 13 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776107853
