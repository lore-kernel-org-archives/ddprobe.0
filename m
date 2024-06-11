Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566931B28A
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718147903; cv=none; b=P2+nLTcQUzgJPobNn5gSFPaH5lUkn4zpLEvNlM9mr1yYuBfcPyBshlDhN/ozhfXsLTkQcVFr0gw/DvIuGn+ndehHy79gKUyy1SAGAiqCLd1u/PRCkV0QfNCL0lyX9CBLwsy+o0J7G7zkdMqt9Hn7kTPimDE6WIOsrOLZAehBFZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718147903; c=relaxed/simple;
	bh=vtnxcOdi+hzgbKv6nvP1ZIgHkvFOZUI+HXOlyeGS42I=;
	h=To:Subject:From:Message-Id:Date; b=C/7/+wpk3ozQK4jrJaCt51NoCkW0lCeZ38KzMzs2HMhWLp8Jz2iIBIDfSReYhIiLRDJDcccSSZXWnoqw4jBrEdWOUwcxakI3t2pDIrcPbGVdHDE1WVy+PbU8dXL7glzDKE9sf/+uLlmxSuYfO0yHfNPdCR7gew8N2/F2+bWTco0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJ9Yir+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJ9Yir+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB20DC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718147902;
	bh=vtnxcOdi+hzgbKv6nvP1ZIgHkvFOZUI+HXOlyeGS42I=;
	h=To:Subject:From:Date:From;
	b=WJ9Yir+s4VKTgP4C93nKD0lMOhS2BTeoLqo0gzMK2MIdhpOqoOW2lQSyynXN9cPt3
	 E+seboPP4PQxSuvOyrzKVmjWXP+RRBbDewd0SC9hoXWQudhf5WDcEBJE9nzBqcyRIf
	 NbddsGPZ9PXfGjpfRHuBAWEFmoDvmQxLIWSbmKTA9sH67aeGkfQVj9adif56ddZ3zf
	 D/W6AL55vh4fUf5zN9KhlVghT5O0cHPKcO2MYC0rh8KIkjqSI/gWIp98+CRH9NUzuE
	 qHgEvRP185JrxclKgK7u9Kp25gMDoeqFE1bxDOUq8RsAwc7EcGOOCzpCWX2ZXj326W
	 1lISVy0HG1RzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C951EC27C78
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814790277.11735.11285193508883677301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb07580dd58d8f84528606dda7975d17b420ea6b078d6fab57ad8ec6717369b
Date: Tue, 11 Jun 2024 23:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718147902
