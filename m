Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258047404E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774237494; cv=none; b=YX7i6l3ZSQXMZcdzM2z6Q47Jicb0KCyg5iXUklNMBM8tR7Lxote0c9isY6igUJke5cSiqEo11nggoxGxRRdhz0oSfHy9ALsp6A/7iYqRg9lq9zOorpySa+Yd0JKgvEmkkxBiHYHqvdkRCPckkLcGfBxSjPMxtI5ClUPxAZW29dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774237494; c=relaxed/simple;
	bh=6adZx23j7XG1P7nmnMUvI7wKyUFW67C1Q0B3SUGL8cs=;
	h=To:Subject:From:Message-Id:Date; b=ZJsuJBQ6vDdco9OD9NGAJKpDuRb1AMRiQz82LJTuRMbuc+KvTZJZJ2UR1cwLVY4MTWq26d948WLIk5vAq8ldnfdVCbDFBzXLc3rzds5AYsBARPyI+UIlI/Ue5ZcZiftXb/kk0EshTS2ESIBucrYf74VG9f8NCdTH1WkCCToD9fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEnaRM/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEnaRM/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C4EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774237493;
	bh=6adZx23j7XG1P7nmnMUvI7wKyUFW67C1Q0B3SUGL8cs=;
	h=To:Subject:From:Date:From;
	b=UEnaRM/75rdtFnvd0g24mk70hBOZ6WC0NyrtmdQcalOOtLyEoaJFSV3CsMuKlgk8l
	 Er4T2Tc0yNK7JxYF5rDSBNiWTQrMLURo+7YtDXqIK5vrtHJ2kdVmcpQrgmhebBStuI
	 n84m4l+UKHSSAkT/g+PD9QQjnNJSyiww6gCXSvLZoscArGhJl9XSXVuTrHArMAUlQT
	 ZlkCOmN0/5yCL4/Gt60mVrAzG9HF5iSssUn4Rja3JDf8zcxCiRTBq3vyQFz+tZxd7T
	 frgVV7bxB6YXVTjm+/oYWXTAKyhmcbVZz4Dj4z/vHLBUWlMXfFYtnt1NAUXjmklciX
	 BU0pY+DuFurjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC44D58CBE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423749363.21962.641821797487450901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e83c4c9265034d320af8fc634c324d411f872d1f3d869f410bc971c0a643141
Date: Mon, 23 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774237493
