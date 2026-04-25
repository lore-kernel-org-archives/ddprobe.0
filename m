Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B111F872D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777098454; cv=none; b=PiVqP3DFi+1ngTnMv196H+hzQimFzPE4M0PRtQkbptw/JIoxnW/WPOd+lrw3gClpaplpaczvvvg4XjAjvp4xpIuN3zEXb1ojeBUiJx9h+NlWVl+duuVaHajqSHzqlEmYSwkM/BDXYFkDRN4OJHtqxGiqo0jSaUyIGUbTpAER+2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777098454; c=relaxed/simple;
	bh=n71IzOHiDI4Ob2o/9WPpybAit7YVkq4Y4ONybWvFWgU=;
	h=To:Subject:From:Message-Id:Date; b=DTNUeVKUO+Z+tY6DnPWflyGgrl+3S9W8pTa7kflKbbgOZcUVRxrvUoCFlmuM8SoAJbFb6KfhWIGbwE3gAsHlwlwXcgu2kfVaGtdoO0/Pohz1/+dApMn+xgNXDeHbtZWnoZYQbBH1sq9nUkrUKL95gONnyuE+zNmXsulUMvBPocg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fa/h3RKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fa/h3RKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4FEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777098453;
	bh=n71IzOHiDI4Ob2o/9WPpybAit7YVkq4Y4ONybWvFWgU=;
	h=To:Subject:From:Date:From;
	b=fa/h3RKNku9gfImaCyeFi1utVUBd5mMtIFUcUxS8HV9GLcNHmhAW9OC8eWf9J5O/B
	 D3T+2SnLHtxhJF/Zo4FlTo88B/wtcApYTuqgh8X/G/5zUJQX3PDwy8C5bUJsD2LZdI
	 6vSq+Mqvwq68e5kZFX6b/X1lO74clOj+wE7vLG/VALcSN92y6lrzq+srNgo+7bz6/T
	 JH7qDsGwIlIqL4hAqg3EO6Ee153TRjiDC6sRx+xC47ltfvCAD1+gyvwcL5Bm/u8zKj
	 qPbql1D9c11HEgweXndtWH2mJCh3+xXCO1GVmWLo+8r71SjI3KyehNdJ3xS2ybaSWn
	 5dF/o2/3EaYNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6D4FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709845368.20456.16271527074873480799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16fb52d093d834f335a5507711f64ce7e0361ed54ad5f5506084816b8ff8171
Date: Sat, 25 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777098453
