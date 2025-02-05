Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B37232365
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738752954; cv=none; b=NzZ2ggi9+RojzJFY1d0d2EcA5d5SEA+1NwsBqeUgpJauH1jLQlvXZXQR03R6cK0qgNKIAX3PnIO4uPX6UakqJ/96PWcX3T3zDCFGGh71PamjkoIT2GVlXKQSdrQr2jDIWMcJ4eGEUqSwL0fWgSuaAgu0DO5WQvd8E6gxRMk3uJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738752954; c=relaxed/simple;
	bh=HEF6srjrG7wFT38Ge9IgrRoQR5njskihWRcdL4hL/5c=;
	h=To:Subject:From:Message-Id:Date; b=FVzgOHu0hW4U9Z8mshASkjTS1Gc+DpJSTiXl430N2r56x+1g+wRZ0A3PXW6+Jfd7TqoMmIoVjTcU+y8RSk7J51M4vhO/OqYOwQTYPG2/EBOTmS/imDGD390xT/0WZJkWyrZsbciogdPAzBiBt4XvdoKnxzCl9B99aciqs/BLHvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lzc5ktVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lzc5ktVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A132FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738752953;
	bh=HEF6srjrG7wFT38Ge9IgrRoQR5njskihWRcdL4hL/5c=;
	h=To:Subject:From:Date:From;
	b=Lzc5ktVM/NQIkUuuX7IyVUHUpC+7RfFSTnrr/pKABOA3DCN3xIqy75Sc4IuVHd+zm
	 FRWAhDXmbJTesWvBwSRBLZ6EiSrtFrorCKlW3XlGvS3qni1AvVbQwCE0oTDK+Q3ub0
	 C5VaVHPQ927C4zgxf6ZdkWIS91l5bK/GFJvRznyT6W10W55gBPq9293rKQy4V7i/ws
	 43q+lN6dFsMWPxKc3muH1XhsZ5eF8IqKOFEBkCg3AT7JeYAxWl5rBK5FaARXkRSoyb
	 15DV66JPE5HySohfAMMGCxVq6Wck6q6FakHLwG6BYMX0sTzP11TRzigo9xX1sAi8fM
	 DmOgYtGt378vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA1C02196
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173875295358.9533.12536205640880530060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d439fdb203ad7e6a68147370ffb015a9b955a57f7ad1d0cd641067de858a8637
Date: Wed, 05 Feb 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738752953
