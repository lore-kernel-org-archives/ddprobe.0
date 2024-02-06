Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F064012D150
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707235697; cv=none; b=B1opSRK5U2cZQynOdzhyHomS95erg7RvwcFOpzI2g+8wFucVhaOBdvi5OZzCqacaxx0cvFayjcpChtPZEA+7e3OAdwctTbBLQq21JPyP2ZJYCX1mJYXW+XPypIFcPL7tyh8C5zf4pA5v1PhSmdFJWVb4x8+JtaU0Ht4zKJV/nNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707235697; c=relaxed/simple;
	bh=zK3VGEy3BCF+mbRTusUIFjwQrTFYYeZLCpmjoao+NBI=;
	h=To:Subject:From:Message-Id:Date; b=gCzUc7hTwoQdmhIVkBSZbxKqOb2PnnMC8S5bZ/m389Ux3zcJkmZQjFctlsbsfe6AsWGXprWF29hYmhnQ9DyMHn9P7uX66RxPpIMVfUujsgArQfnAQtZN7Z6g4LWNRs+7HxXGGsGWKyvkdJ4WzoN70GvH6Xs9r4S8jjp6PUtfbmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DH9JhGQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DH9JhGQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B7F2C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707235696;
	bh=zK3VGEy3BCF+mbRTusUIFjwQrTFYYeZLCpmjoao+NBI=;
	h=To:Subject:From:Date:From;
	b=DH9JhGQlyNRDKm0IiklJ9U6/32sC56hHrLj5wrbcJRxnrdieACgoGRxs+3lGdvo8k
	 vnNF6SJVIY1bKQuDgVI3nccRgPx9+wygM8qp0Hq7HMDiHrKrt6VB76/nb02tCHuMzm
	 XTQU7LBj5gOU1ZK58nvu/ViJz+eEtnLycfdBJfmQxnCRRmy5abATr8dRHNHdecY7ZY
	 +XUifHA3cJKfLC9sgl9WY4bB0/4Ha2Cd+KGEMX7bo4Z23zGuEYhn8zcRzCMpyobq4w
	 3TXjzPTCb7iAzXqHdOA8yKuWz6daRBshXdvGB1rAPygyt75mOCTBLnXK/lKPsBC0L8
	 tYmTqLjBm3P/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B104C48297
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170723569641.6573.11201767943741816453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a030bc720e6c0c7d9189a6b4c321e9876e3f223f842979d81b60a90927c4d1
Date: Tue, 06 Feb 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707235696
