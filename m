Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FED1855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647254485;
	h=To:Subject:From:Message-Id:Date;
	bh=c2UuiLQZUJzCn/DX2uGY5XrNe5hgA/8djJSe3rghYt4=;
	b=A/W5bjNIgRpFUoYDb0gUw5XjTxFwVkgu9byjtBRTShDVwwZXOYA6PMX4/6Jr8b+f
	8J5s0PAQ2LqgQ7z6Lms+6ZOU5h6O4o1M8t53KVy0s/QSMF6M0LmuyQyTYmtnCcxKCKX
	csf50LQt2NWnjdKi3t9tn7I3J+UrHls+xY9TBU4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647254485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c2UuiLQZUJzCn/DX2uGY5XrNe5hgA/8djJSe3rghYt4=;
	b=QnCHuaY7nyXsVjw6oFm1XKEEHpALeR9V30NloRq1k7SmFBkGn0wpxV65OEJXuXEJ
	MsrfVcmE83sLn7DTbNdJQo5Ngp6FhnJwkRnyltMS/c1Jwra9kCTzaZWwmdodJOONJt7
	EKIs2RirUbTXCtAnq6XvTpemW+FjdCCa0MsUDK5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8804b6e7-66cd249e-a1ee-49dd-a81b-bf8b337be5cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48cec29a1f6b065bef0339323b43a1f4fcc8704412a107f5e57efd480f2a1f68
Date: Mon, 14 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647254484
