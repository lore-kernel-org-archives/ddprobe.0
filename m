Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0277510EA
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 16:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652027878;
	h=To:Subject:From:Message-Id:Date;
	bh=Jo6fZ5B9jK2dEAnPD05UkcDWbDqbOo70rKwAFY+Xs2s=;
	b=TIXuHBOjom2src7SwP/pKHuTs0e5vIZNU/ZR+Z0lI1CcJzgRHF8lCbXOvqSQJx0b
	5te6ZzTtvqaULA+Rl7PlII5nl7PzCxSYDxFaNtOEbDtq3ezvXVh60fl+7glgzgQvOR2
	rnKF/i/VPk9UDN+6BLcc1eNA+qB3CqgNLtoP78b8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652027878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jo6fZ5B9jK2dEAnPD05UkcDWbDqbOo70rKwAFY+Xs2s=;
	b=JlqyX64KNyRN3+LaoXrjlRL7ibtWlySLi0QfvNSs88M1JkZNDy59+XwKI+eI60Ys
	hvZVUtDwdeK3VtkS0ZiJpjGJFqWsx7Y1aD8FbX156ufn77v2LBJoKmH11M7kC/ytBLH
	vN8xlpl7SJwOVpE292U+qT4sUYg9ZAkcnH8ecQEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a488ebb9-b8658f85-0d82-478e-9b54-8816283573e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: def8f9814b6ebbec9a5e419f77cba430cf337c76691bd0576845c552441447f7
Date: Sun, 8 May 2022 16:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652027878
