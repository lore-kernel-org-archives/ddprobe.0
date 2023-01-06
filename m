Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF9B7E8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9311CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673031087;
	bh=mba/MuHhLzvZfOKhwn9e7ZrjFKa7mkqWq187kd4ANJo=;
	h=To:Subject:From:Date:From;
	b=XWss9Ls1BCsS0FsqWlm8n7w22aENnF+lD7ClBbsLzus1FaBj4gFSyJb/ij5d4wGXl
	 SBduj3WzV9UNhEmqpJX5pQdIl623Tfz4rN6f5q4AytNRK7G7QtMwigVZt3nx/GSjAm
	 5VC3M67hP/yIaxIcjtxQbU5LIMs/XtlqKUosFMMSjUfENmcRNliGY7qLb8RRl1s66W
	 cM4dogkuAoHOHaRH+MGLi2MMp+0qy5NexSddl0wMqtHYqKzjsdYYN8mbs59jlW1JtR
	 TTn9n3RyyE42uarArZjNO52EyvDREibun0X0ngBHvsaN4qIAk/AqN7OOtSnI+YVX/2
	 o4OWBN4ZnlTaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74F29C54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303108746.16905.8415513223186558758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1195afbf365c114cf86e0dfc6f30bf624dc0dc53ddc49b20d505962d526f7cfb
Date: Fri, 06 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673031087
