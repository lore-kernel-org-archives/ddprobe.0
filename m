Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119DB249EB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769970234; cv=none; b=OfCB0QAeaZYU9bV3pbLzkmGKtGLnrMvatQfZmfaQ9fbPe3s1JIqBD9kmm1+v1LYAP5cewecy4YFN95PJjEA08M3A05qyQQvZMh/ypxcai7vJXc4CmJ6vi+ou9Uk34DoosGu+RtcBCMp11CtSqAw42tYiKtOVYyW5QXe0hq/Wh70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769970234; c=relaxed/simple;
	bh=SgmC4z+uDxOYqAx2lKEv+EYa613oAVojyrbaQ/t1ozA=;
	h=To:Subject:From:Message-Id:Date; b=tGFaU7SRaNIhiOKn8dg6Q3tayqgZX8S6qwW18Hu5sFpGlgh69RlVAeJTX2FmeQUDBVr7uzbbBBcCSTA/TIq94j9Qiuqu1hEylx7t3aEZz7HkGtFC19JO8aV7PTCyPM+04A0xOX31/AU2TYBWqnj/dPbCJoecamLy+eodz6zqRis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxzPnoj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxzPnoj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A0DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769970233;
	bh=SgmC4z+uDxOYqAx2lKEv+EYa613oAVojyrbaQ/t1ozA=;
	h=To:Subject:From:Date:From;
	b=ZxzPnoj/aCTr41ww1f9t/Af/0KdqoaYIUi4rUuOd8jXNZTbDVd+7b75ZrgB6+efFc
	 cb9Ip18WADgVBcl1Bxr/0UmtEZ0cFScWlbs6qJcvL775pzQsjEtD8yTj2QLQE1Oc89
	 y0xYe652UUE3ZLaOacIfq9vN0mjujG7FMhEvJ547M0hZMp8VJGfZ3kOkjcWjd2MHLb
	 +m/82zx6jkW9VdqP73pp0mrc7tU6csrJKUzHfgBwq2dkiZFxCYuUqfE/h72T+/FPm/
	 r0mD4S8FjIRVLVGJXAivHOug+2aIL/F8FbOku8Mcu34zvZv4jYJsy0r4HcE2bJwqUh
	 Q5syFm05cZk6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8EAE6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997023360.7946.1193491512608913661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4281d87f65d05c20771a2929090c4e35c7e69a788176acbfc7c5de9c29d79186
Date: Sun, 01 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769970233
