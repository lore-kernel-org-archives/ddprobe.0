Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2298A35B65D
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776400054; cv=none; b=I0QZwmqUxBEBX6tNPu7b/pMxUqxzdQsvFakWcU+a3ScqDcUZAkOBI39WZlRoxj8npGHOx8EMjJnTNrjOfQsKGompmNkehuLUiOEnWE1KIRrw0I50uwnCfnCSCI+fljHH+z6mSJoZuYdZ5fpfWRdXKO+NvtsJbGpg4JeEGJcQYP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776400054; c=relaxed/simple;
	bh=gSIb1PCT3FNPGpMssn5XUyAD7/LFAFLtHLCc60IkY1g=;
	h=To:Subject:From:Message-Id:Date; b=Sqig/+XU2OL1XdDI1O7PzvoVOfcHeNjHf25vtnaNRNqL7M7W4N6zn9G7k18V/fsT3KXu+/2lx4/pZn0Kx8Bzh3sNB/H7Yl/Po+HT0gwEfdUejzutElvjxuz1lXM3AW2P9dX0BLYXtVJAZWjThXvemlCKqwA31rjomnGiS1QuLHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MecYJjoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MecYJjoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE3FC2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776400053;
	bh=gSIb1PCT3FNPGpMssn5XUyAD7/LFAFLtHLCc60IkY1g=;
	h=To:Subject:From:Date:From;
	b=MecYJjoUpOc7sUCvqnAdgcL4F4ZyjCxpS+S+KZl9RoDJ+bzgnB/y8U8nME7jggwPN
	 2mK+9xGSJoa4oFRZAHTBWyPXbpuhTul8UgRHCyIRFVOM4nobvQUXc4/zSAtV8krxFt
	 D/e/p1y4aU30ROiVViniS6xGBqkVpsjzycVtljxVQ5kJU+unI9GCmAcO9X7ZNG6Zp/
	 aafUjCvhbxa3ISQcXr5hK2K8XAbbfFREwh0/J1B18aVJnWA+f/m3GreK+VK5XWvPKY
	 CcHzuF2NUL5X1+fsT+BEcra+JYFstxfhloWiRLkoN9hbQYzdxBWAees3pzdV9ElJ64
	 IriYfUGxZNZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E4F8E4A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640005369.4205.2977897748776709791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae86c70840ad2a0bd08fdd2cae7abca58bc2bf24206e3a8daa532cf10cb1e39
Date: Fri, 17 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776400053
