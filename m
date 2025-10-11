Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D94023C4F9
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760191194; cv=none; b=exDIh6UPIsWJoIJco3SS1oastQsGZyDc9RH32aqmrU6R7HzGoI6gyK5oWLfC0HF60JIlLCRNboijyk7QC0wuVgfwDi6Eaxrbtl9loQf0gzdCRCXAZY4Li5ZNwBqK0cFAB7Yn0FsasAaIZ5WiixZJ4yLLkNPO6i5TQBGlY24Zcy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760191194; c=relaxed/simple;
	bh=iqpijT3LAkY9ljSQaIRxRYJaF0cZZIhPm6v6AMrIzYo=;
	h=To:Subject:From:Message-Id:Date; b=II17Yv0kTlidmFWVSmklS8Hj5t60peM1aemroZRBYPmPbjgBziDHJQf6yBQxvkrVsm2N1CTyWRCR6LHGmRIFX2IEEFABI6w0bDAVxkS505k8g8JGrx2Idf0DWpiyGqkzZH1qvtLVdFuONFjxZsy6WzKFCuIzjgBKe2W3MSDSdcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7x9x1uZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7x9x1uZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43EBC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760191193;
	bh=iqpijT3LAkY9ljSQaIRxRYJaF0cZZIhPm6v6AMrIzYo=;
	h=To:Subject:From:Date:From;
	b=p7x9x1uZn8k5RFRfkduqaypzySo3F/70bZhsmM0agbNG0PoKF66vi8DiB4Mq4Juz2
	 Q8FEQrHin/IfSNO294+YFSU4E2+zEaD79NODwd0/BoMLRGIxV9UyVn8KgLBEi+CVlG
	 iu0AoSAQ7WO/Pw2/daDL/Aa1op2UJ988OL9fTcN0k/zLAS90dyt8s34/1zcIDfYcc5
	 EV177YrM1EMHrJSFLTwGt8MPLx1XybVHUoZ/QcmvnFO2aFb+8lBz1nsWHzV0+geerQ
	 ED0gUYvMfeKN/sy+qH4UGouIe8W1ggAhorU67Lq8YlkCjGhUUoOiGo9ys2qTPEiVH9
	 xTQLMRe/IzBQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93246CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019119357.12872.188644723756549651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3da738224008d5615694462a40e4ec6860b44c9080fb412584cedce618b4f6
Date: Sat, 11 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760191193
