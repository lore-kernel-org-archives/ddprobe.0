Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D43323ABB9
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775482534; cv=none; b=JEvwmwAbzmVO3GU5AK5UGZs/zVd3QRdjZrpL2LSeIDJWbxdYAlvY+614j+Ffs4HW/krZWf+ORIrFZWVktd4u8b4+5mF+VL7Ho3WoQoKa5MlRKZOI4T+B2i0g8M4xo+1kOCO1n0DKCoMS+SGxWIbz/jBLJfnvD/8Jg98MY5HQV/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775482534; c=relaxed/simple;
	bh=vDjf8H9PN/kLHz38I3mGcYNV7xrQ+KUbq6T2FGI9ShU=;
	h=To:Subject:From:Message-Id:Date; b=EX+YE0tFAK0ErU0rIj6nuBYIyhc3A+lW71uiCZI3zq8gKdoBgXTDYLnl5QRxdhRQjSgT/hV29ez7I2S67Ay+pvPIfOdIHwNzmpbX8NNPqAS11OhjijxRCA3lC8uSbzEhyh+QybjjQRYZBgSwhzOUgxZWJPsjxex9PvCKjRuZHLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlyhiHnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlyhiHnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CDCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775482533;
	bh=vDjf8H9PN/kLHz38I3mGcYNV7xrQ+KUbq6T2FGI9ShU=;
	h=To:Subject:From:Date:From;
	b=FlyhiHnh7lAcHQ+8cZpHc045FzOXzNM6QOWGWK2ZfeG+QfJJwg4l1D5zzj+CbhWbJ
	 T9/OqcX1wLTUMONNx8vOM+l38moEJ0aVMsLVxGu2DiXx9CNqziIEG2bloDQQAMNdqk
	 DJaVsgebRDdIRFCVuyvfoDeuQY/32VyTSHwVPpkdM0D6rxCZ0ZYnsxMK4SDe7n/f2A
	 tzxSeTVPLs2Vc/AnM9qkP6HKTwJNGojxAqemT9KRY5kyp13eUvdNkodkiZ2cuEpijE
	 4p1s9QJoMo2+8B4cZ8YZAa5b+Y2IrKqhDHXwmbijgEBkIY8dZh0ofr2pk0PEQXWFC2
	 BDu1Y0mB8lljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA40E64016
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548253369.26103.458345526361156732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7537c77fa653037eebce5bb0185ea41e54d7d8e7feeb9de31aa118719bbf63fc
Date: Mon, 06 Apr 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775482533
