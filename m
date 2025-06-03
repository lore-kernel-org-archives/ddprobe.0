Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B922690D5
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748935794; cv=none; b=O9y1tC7JMlHO5FCiA/5xuVQB7W+xgFa8wPsResY+rziobCl/uJDKoGoMu6HY5TztQRCybAKNkWUQk+0sevPR0fIeB+VUDCpm6mjU82b9giDATvippQl9EXDOfs+FKlV4mT1rgJS1Yb+QyjiYE3w0a4p785l9x2Cpql9+OPdZO94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748935794; c=relaxed/simple;
	bh=/tV7s2g9lmRF3OdePxfy4l+JvBBOHGhul9FEHUcFeW4=;
	h=To:Subject:From:Message-Id:Date; b=t4x+vFy+WhEU9U3DwsguF5R8Uug6lwg/rvwCFPG1SA4o2K+ArqEBd79l1g81KdYaZ/A3Z4xUknb6yfQhrHTtSuN17XqWmupjATY7oclL39mZD1XgDmMSOTk0NVu+8ovLN7Lp71s20L8gvmob7hBHU5X4dnfYALIIZxgZzV8fiPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+nRIqGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+nRIqGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7719C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748935793;
	bh=/tV7s2g9lmRF3OdePxfy4l+JvBBOHGhul9FEHUcFeW4=;
	h=To:Subject:From:Date:From;
	b=W+nRIqGHR496Lj0QdL/oOyy0WIop41t6L37iRquuBBoclgp3Ph3EykLsZnpOhSMSO
	 HeMZtAXTsAzWZpynDhkId96MLBmNDhD9+Z3GB2rXJDO1mke+XK2jll9rSiXMFob5B8
	 n2odTfrKvtGPsNLdKIJqwk5kHl5UFwydyaVTJ51BZC7PO7pA7eCrILHVk7l71Z7qYf
	 ScDoaBxZfgUdH7p3vX8199BLbpOeCT9ZB9DY11gv5wWAOK8Lbz4HdAgRyjLXHNAxTH
	 YbR/SzTYfACq9GklUDx5YwkAtr7Uo7gotOYTQM4mOe9U05E7bn8LlDgTyD5S+Ekekp
	 VhXhxAqw5REDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97348C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893579361.321.2137921039518473359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff4a0c055870b182c3ec30c602c31794e8d1c6a498a1068b9a07765dfddd1b8
Date: Tue, 03 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748935793
