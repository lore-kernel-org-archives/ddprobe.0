Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D0223BCED
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781997994; cv=none; b=q/4w0P7CSs6FT14FfO0jnOFeL0RcrbymWOGDZFz1S9ByQFG3fiIzXtQQ8G0zVvAIX98UEYT+XhxDmYLJSGzo6Mv+gWg9X/hIXn2Lahb57qHMwFERtKUn5BkQZ7VZcacSRFXSFbYGf2qBPC7Z+Tq2ogkk5F6GHasGEj/oSFVukc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781997994; c=relaxed/simple;
	bh=/erNVnfpVwYf4aUWzD/DKKMVi4kgb1KnxdBZDMscwvg=;
	h=To:Subject:From:Message-Id:Date; b=MZT7R48zjgXcjVZjyaWl8TCEEO1S77fYi40n/qFuvQXx6bjzHeyWmAz0p1JjvFtjAnHVr2LMcT9qUaWRsUDWdda5Dd8xI/j9i1MHuISc+g4ye2pGbfS+yZFlEjLSsGQRoGog7bbItY7ihiCBRjrUVstkqO32P6B4ydbbyQargRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Brt+QZaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Brt+QZaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA17DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781997993;
	bh=/erNVnfpVwYf4aUWzD/DKKMVi4kgb1KnxdBZDMscwvg=;
	h=To:Subject:From:Date:From;
	b=Brt+QZaDki3csOyQKHscI68+d746Tgqzd/o4R5MZsNXTbOCGmcXaceTGQa0D181Oh
	 EyaiZzzzrzmdxtOvd+AcxRmnkfQCdfgcF2qe7biFf60sl/f9NXgIHKiKKfoYt8T8d1
	 J41yqnU3gGmWymksfpYpMYd5c4WmbO9z02a8o26IEAbSKE+h8QHk2olkH+fY9cnGcy
	 ozfSzkJ4qXSbd4LALxfX2rrBuheeA8qYvcNQL0C3SroF8Ax40O8z34+FSxmbp7ct0D
	 yDlwVqOdlq4qLL9uRGcrJ1jBw7lflTY2W1ipcwzajRdKYGORCCGZlfu+RhxWCgFQTo
	 DUvlbwL/Vrz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD900CDB466
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199799370.8072.6605851063835915959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a445c1d7fbd62178252ba122a588777e00e46314eb768f2e886e36257cfc97cb
Date: Sat, 20 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781997993
