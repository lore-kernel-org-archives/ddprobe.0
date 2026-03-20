Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD7371072
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996294; cv=none; b=iYwAf7XaiXdndKQdWWW49JY8NpmJFWf7Z/MPKC40GXzg9Q3odDLboI4/4M3CrUxL/J2BLaIpHK7LbMeWe34oCcUe7Lhd2an1ke8YcUIzbIOultXO+VriCdsU9d/GLqOhJYu+DtRAW677YVeBPL/8uDGrkWb6BLd5z1hZ410LAOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996294; c=relaxed/simple;
	bh=ZiODEW3C6M+jckTDJXFcck1hsoFHD6dP3CRJ1GCiltI=;
	h=To:Subject:From:Message-Id:Date; b=fk9zcb0Sw72Ovmb4ufP3dkE6m5Isi85OFverGJg1iVk04mVu0URB+yOgRu5biPJf/ROpBOL0M4S3qDFGDSUi+xUOcwoRSn0PNKTD8VmVlom9029uUYHYOMucEhlFkjvn6OlK8cR8OFNiTlvVMg6OVMYOSIWsQo5Y6CwHv6RJtoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qohtl0kq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qohtl0kq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C68C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773996293;
	bh=ZiODEW3C6M+jckTDJXFcck1hsoFHD6dP3CRJ1GCiltI=;
	h=To:Subject:From:Date:From;
	b=qohtl0kqtboySTwKi2vLdyhrOjsU13Xf+FJLpo4AFeP5C2idWm7FahqM53Xxv7b9+
	 ZmwAbpZ2QNw5lgRqsoyR7rjkZXgiDVUu+pIMfi83Ea4b1QPnOiA7qjlZsmMK+sjBmd
	 vgNWxjbLMLO+FANZ6o2oyeZXQaa+hmen7I8rE3hPzZMsVPr+bYdFkF63AQPGi5zAh1
	 FycNi6BkrUxgoz/dIfkMFHu3TROva99Bs9lR18iLfkeXrR5tVp3UuJILzppKZ0eMZC
	 FDxQQGUX5Mw9aeqdGbN/L29yVK+3jApoA907HWE9G+DWM5xa+3xERxfeUjXHLE7GhU
	 QAfUPjlkwoKzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EA109318E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399629357.5753.14583423215591544415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a809bef2df3f712f776f4d21b7fb67a821f91b9902033933153e257f4b146b
Date: Fri, 20 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773996293
