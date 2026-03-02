Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073C133F36B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772477694; cv=none; b=eXcU0T3Nm3Sa5VHwAzeNN5uwErp76tq7UFXJmiVNDECktW3vVYfwYy5Yf9JKgoksDC2I1JDH2ze8r5nrpm3Q8wdVcVu3743BV69DwXHCDVCdP+btR26WlQFhNOTu2zn7o+fD/PSVCBNmJTyvSfF6ZyxdJaZh+DaElNnR+IDmvaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772477694; c=relaxed/simple;
	bh=nqYHHnZivCwhem9RFAtk907jVLHdDDnCw1i0FtsuiCk=;
	h=To:Subject:From:Message-Id:Date; b=cvLO2cyramhTE23WkY9HGbIlgZPFdY1nHivtGiU1qXTBzFGbyy9LoinHk4OeAKQjQlnP2gnQLN+hF9Ro4LVsQ5EFcOd3bmbcPk2TqtsDb/lvBl96shgS9/1F2QMURplFR7N4/bYFdQxGkRsk3n2q6W7j61u4gz44eu2K8TyP5IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Or5v/CvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Or5v/CvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D72C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772477693;
	bh=nqYHHnZivCwhem9RFAtk907jVLHdDDnCw1i0FtsuiCk=;
	h=To:Subject:From:Date:From;
	b=Or5v/CvXLgu5gV5UyjbnqLQgirPuxSoa4kTS9d5I8dBBtULFS0VoQYD8qWajCqRj1
	 Tcyu7qp1Qy1X/euNl9t7a5Y9FXnmSZUhAxIG1l1w6GoNT4FKb5OjaRqF01yRgc/dUE
	 Xjt5xZGoy+5CSh3FbcuAGwgBWHuVOkYTIbbWC9+Y3b+XS7iK41gWB3tKlLkc9ZsFO/
	 RadBBu2H9EpE0+63KZpbDw1FRnVBTK+E1TUtx1v17h0v8JT1LmZm4D4TWlXLY0Ggoy
	 sWd4zb+m93Ihzum06fP2+Ydwn7VLaH1NHiw1LUUFlMhIL1E2Ikf9muCUovlLNe/l8K
	 GiFEb4re2KHyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDCDEB3624
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247769364.7615.12147135127672497692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64c6e8d3b9dc91c556b4834ab5c5b2cd00a94b419485dd6286f8276f6889c04
Date: Mon, 02 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772477693
