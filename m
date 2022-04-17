Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196ED7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 09:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650187678;
	h=To:Subject:From:Message-Id:Date;
	bh=UX5++QKAY+SPgVz+I9JlwQBMHsAYN4N+5/nDnPU8FLU=;
	b=lJGtk+Wh9gOp5Jz8XgQE5Z+BZaP59fFdVFekRZ5oEFnrjAZi9kaJSFAj5dAOmiZe
	lYpODaFQsHu0IaqJP8ocfoVdvV8J1VM4ubQ19/lZnwpGGIZo9D7UpjyNcG/rOx10BFK
	DPfw1OWAdoELVgEoP9rFuf3B+4GsNxkfNk2RRiTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650187678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UX5++QKAY+SPgVz+I9JlwQBMHsAYN4N+5/nDnPU8FLU=;
	b=dW7d5yUV7tmkbhA0m+sKIALcDcNpKauEbtFj8x26s3WCbCB1nYYvbVfxCeMmFuI4
	ucIW4uhk4nNXCEyxKMqom5Pl4//NJmGc3LEZKpNxOSfxaPw7Jj0Q7wqRpy5BzpAonHa
	k4yY47pwkHK4MVoA01QBi8CJ8gLbsTQZEKp84S94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018036d9b238-d3d4ce87-db42-4c61-be70-b8011fd85b43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80a910cee1585e2bc92299964dda3eb10c7657068a10fd59c863546a10e33fb7
Date: Sun, 17 Apr 2022 09:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650187678
