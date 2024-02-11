Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F26311182
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707692297; cv=none; b=pQcN9MjR0UuXoSmAJu1mQffYe/tqIZcMcWCy4Pta6HLm7Ll0iI8HH9l7j9f++YHeFDZVxzHnUSAGPWN5dOuRVIGl6ggmqSH7e8+4c+r0wHPVsNVbYhut+JrazVN+Ay4BRIEYo0hjfHYXDy2KKwdy3gg6yYAq2vMpveFgQXSOOA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707692297; c=relaxed/simple;
	bh=Bogg1NbAET5ywkkpBzqrjgCz7LsdK0xwfil1iz46TKo=;
	h=To:Subject:From:Message-Id:Date; b=r9De5ZfTSyu9ntDDvwVM04W9X4gMFjOvOv0eXnHu4du+SSpxEPY/hWy9ayWj7bYd4MSdTTnvW2G2Euiqrse7yA2Lfmh9VDvyZyVAcAYDz++eVktXa7eWOsHCQKFvaMYxzUfowQwUMY4wtj5ijkq1i5dsc7+tOYRtGayEfea5RlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0U1DGD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0U1DGD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF84C433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707692296;
	bh=Bogg1NbAET5ywkkpBzqrjgCz7LsdK0xwfil1iz46TKo=;
	h=To:Subject:From:Date:From;
	b=Y0U1DGD9Q0fpanVQiDv9Mby3CdHFLwgp0t8kRsIbPi1YagM3+StGReKxIQooY//OW
	 Qv0EbtL6TbVpe4d/XMQQ0K+o5spuiE7zPYazkoyM1DGd8E6wqax9m5HFLOg7QrFfIc
	 axHAp9kRR3fis6qbO7BnoNeepZyv78LQElt3qTzyY5VdaHP4t8v1eWAHuSe8WtbwCE
	 p69V6Pbu5HW5pd8xvGMadt5weWGJj+7YLxQ41QRw/ASBN7bLGH/JtVJOdKMUBfCYlx
	 uC3RDNoD45su4ddhe6W9Xge87CitjnPVGycEQx11UXAsEI0Xi8KcATSZTjW6X6ThIF
	 alGmKyZiF0Tfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F17C4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170769229636.13486.7926550835633305571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9515e540072908e032545d3af235278f75d2539731284f8e5b779c1c4c4ff71
Date: Sun, 11 Feb 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707692296
