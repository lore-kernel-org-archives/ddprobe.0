Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69119154A8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 13:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2406C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687267928;
	bh=FpNu2wUU7JA4zMBwRzz6pCAbQhszlonsCuhVVCHJh6g=;
	h=To:Subject:From:Date:From;
	b=XzKjRYJrJYje6Q8QzPMzMyC8vFqn2nHjpKhoc21yMH+JGsZwaIIn8X4dHQe2QFes7
	 uUxQrGswUeKVcu4DB51gRFsyNu0RvYqkDACzLfwjZVFkVLEODUe390kuyN9/b/HY40
	 N2geuwrLudCp3OycUOhFEX4qWogzUYVtJHsimuaR1AUazspmLBy6NYerRMOgUeAjfL
	 b7BtmYD7bFyIEsB0yCzAwUp/KzYR8EQpx4N6syatj+kkWeEHwiid3hZ9kNR5nA9rVt
	 4WPd1d6SpeEKoclNCTJZ7YztnY8aV/9wgVFouqWq+IlyPh7qxGQRSeKT1yXGCs/eCI
	 h8+jCFrT2gobw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF177EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 13:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168726792870.9482.5825478663954882074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c023e4ea675c049f6c90f88b1ec47b40e74bb6ee98ed696d33ea862f7e01e8ed
Date: Tue, 20 Jun 2023 13:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687267928
