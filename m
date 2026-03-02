Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBDF282F05
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772495694; cv=none; b=DfSC1TFSCSnc59elaAdiCNXt/0GUtLT5EyVT66rFHVGq/dsT1/DlyvjrfkYKrhdSRzjEayozA4JN1lWE68OoWQ2Hrc4q32oYdBfMnc8IGZP16qczA9AKh/qPYE4m4yYG6X3w7tBp3yWy6KAV2OE+UvNNlRCFlS2GfNnhPytuhlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772495694; c=relaxed/simple;
	bh=kIammSm6/pi4HwGFytpap9aXqQZCnqaY1qntKpO7tJI=;
	h=To:Subject:From:Message-Id:Date; b=cw4BUiMod8ukS8VCXazILHSY/GN0MmZx/skOW5hY2+OKpXbRLlFF1/Zi1K6rAMdoxtyQBnBeS6KvAqJSW0dD39Xj1s+GS+PdRY8ju4uvWR4Kt+zTv1ZCAvFtmJJ5hd9CjdBgVFqOhQhrijCrrqcRP8W4QDLGpO85a3f71revjnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRw3GzBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRw3GzBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80DFC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772495693;
	bh=kIammSm6/pi4HwGFytpap9aXqQZCnqaY1qntKpO7tJI=;
	h=To:Subject:From:Date:From;
	b=cRw3GzBQvGkkEl7C54qNMwLVyim8de6In1T79y7xNqraul6CNm6m812IRFk6M22YE
	 ZKXNHiWI+RiMnRgEsWjrcWAOpQ55zVKNiEi8TmubmHP4OwHxFt1w71GQruy+cTq9oy
	 /XEZ6cutBtE7CrNcC6jlR3lfRhFsnVJvQCX3/bEvRT3Xg8gnHZXTCMzppCAIsUgOzR
	 k9Z44eaONy5/HA9UWA0ws/LuRKW0wVMeGmV78v9aG4uLwDCmLS0y06lV9GnzxYXScC
	 NJ9G/YHotyYBd/xPOTDS3Vl8AL1RWgmWLMXFPLTlJ2IJdam3JCxLcXQZy+qfQjc9bM
	 VfmT+4O2R0jtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D022EB3644
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249569362.4924.4758099480923528891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed6ad6d7c18a3fc0bf690480328d742c688ccf74b554a29aecab5038b200b80
Date: Mon, 02 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772495693
