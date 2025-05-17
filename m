Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFAA136A
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747448395; cv=none; b=dIhkvWsJFnaeNoVTrT0WBC4r9X33KjWAh+1Oc518GIPaKhpe41NgiwuLfmC46Tohkx4p3wEti/kzTLPmOXV9/qxdQtwfq7XTLF5pxGUP1MRD3i1+HbZyJl9i1LJDApvIqgkInytuGMBpeAsj/q5PI1hzoLwAHVZgq0qmhVA372c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747448395; c=relaxed/simple;
	bh=Ve5hCEdsfF6XkTHWPVDi0PtQut4e6uCj+DEZrg4zxLw=;
	h=To:Subject:From:Message-Id:Date; b=dxLYpPtK5vAGv9lXjO5sNXSe2Gvuhjo1DFkpTMCE9i5JA5z3xYxN57XdOQ/b5cPzlxO8j/4P4+OYHtzcaEtwK7fN3y2U14Qlt/0VdZluCxCgrEDCafnUmlKbdABOosbf36rdKJHB+A+YEEWBiW5ofvF9SlhLJUlCPnJKmw9Cjkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TprXi7Lv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TprXi7Lv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54A2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747448393;
	bh=Ve5hCEdsfF6XkTHWPVDi0PtQut4e6uCj+DEZrg4zxLw=;
	h=To:Subject:From:Date:From;
	b=TprXi7LvAzSZC3+1tmZnMz0sNUW/QR0ZwUf4SxAhnq5eOUalaSTRW38TDOMnHOqiq
	 W250X84wDXAwkIBbwnAhMU/kShWLK6KG+SA4x3RnBEWF1cyA9bng0KFPwTQbS+72ED
	 01JeESHXMVtvoFHwdw4iseaBt6vE4r2nF+FPYpeEhxGYKnX+tFM7ij8d7nJUHvVK/z
	 UbCjW3RrTbeWMX+X4+dzHXi3Se3Q1Kj3TDIgH03B98nmFmQgPijBkrVUSMZEys67xt
	 oeCC6W4eXsAavJTlVO/4RzZq6G56R6sU5oOs3NqKoIq0hsv62abMLw6EyJu8DiRgyC
	 kdqw7K1fc/zWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92307C3ABD8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744839357.21020.15441510014765774703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a4bce08fd3bcc7ab28e4a08939194199c7c2fe7e7faffc3c39dc7554ce2860
Date: Sat, 17 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747448393
