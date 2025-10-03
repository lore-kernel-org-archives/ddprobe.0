Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C924718B0F
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759516793; cv=none; b=oO61uN5EAHxPwXBFXQJRUKeqi7u4s68QgViKJnGUdtJ6ZMqnJxmVYn+d/9ECBXEfUEE2f1tTLkvVF0hnwhbgyVDGZDyFdPl2vCvHiyX3vldPApL+ZBn8AwJ2RqNrc1ZPYw91rU1C+P1pL6+ieVE0GdfrX8UCg0l+JRr9TUKWjDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759516793; c=relaxed/simple;
	bh=MgmscfWhAOy+s/+aLZe9AzUkz+tvH2fsj9w6EgMizRw=;
	h=To:Subject:From:Message-Id:Date; b=RWWi2xEdgoM9n01R+MabWKbl5hhG69aAL3/BNmLUi6HiyUAh275tZSB1rQghbg2E2sCeGMN7ue+f057Pr7v3mTKePYqUz8uYUJ8jROCL+ge/Aa6HrgryMHoUR0Ma06aaYF84jVphXtAG2vthlHyjcPUWvet4tZyOUHvksVoC9es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne7V9g0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne7V9g0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F401C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759516793;
	bh=MgmscfWhAOy+s/+aLZe9AzUkz+tvH2fsj9w6EgMizRw=;
	h=To:Subject:From:Date:From;
	b=ne7V9g0FHxXw4qlvzjCIqZNnHVITiv8z89+fTwIlRqoapcBbB8OJDf4uDImbelYmM
	 GFrdlpX3iFTeXajeBhqH2riz9aaYmbr97OVDxGNZaRyJ+jzEPwi9HcIzm2bDwMHJbH
	 11mXFQ/TAxTiP9ReboyGSv6aw6rA1JsjuAPLsO1/GMUMCZtQdjdoqilq6uVyPmzvDj
	 fdC44VZxeyWiyXInV2xJNyGVMJjyIxy8CeToWg+Q3NCcap0rMIMTD3evXr+qbBTBFe
	 GboS+vuyim4mFnyv2fyAEKnQp4ajG2XHhpOb0dog+70ng3/iqV/EZgGiJ13m3B+5wh
	 3uOeAzVjL7sbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56FCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951679357.10168.8845289465425431141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc211f1b03a0c913dea6d79daa9031762473367ebe78a0bbf80adef548a97b9
Date: Fri, 03 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759516793
