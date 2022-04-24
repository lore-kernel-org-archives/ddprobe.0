Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E01733E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 21:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650835018;
	h=To:Subject:From:Message-Id:Date;
	bh=iktZonDEE5bBsvV5WM0gNIk5ynBSCig6hm5kambOjnQ=;
	b=fJDvJQyoz9Qg2SXWdelIkCmUdEeYxYBz0Cv0rlINmCRlPNsmZ4j5vN39ek0HdOh7
	HdVEYRhn7j/qhA/cs6KZkF3+vI0+GtbCAN3pkdd6Fko0bSmyODmjPpuzOUFfFccj0pk
	f4Z75Ks0wqyt7ydkXo4mZreHIpa+9XcfPtG4v7Ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650835018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iktZonDEE5bBsvV5WM0gNIk5ynBSCig6hm5kambOjnQ=;
	b=U4oFTGgJMk1Niw9/stDhOqO244XqYns55ziXMnmKWzjOc7xmrAua1+h6AvmmMc01
	J9TeJrHSRDcJXekoBJKaUCkh8I7Pq0Yn6Q+wKkzqxLdGqS0b/1ovTsPHc3Mm1AO/jC2
	c87BJ1+1bY76lFJv7rLUA4eBUeFVe/VCIe/QPykM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d6f5242-44abfe00-3c8f-4534-bc36-c0c2ab5e5ac4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6ccb2d64d5fa93dbfeed8f9bff713c42f0de474e234082685363b1f96c79057
Date: Sun, 24 Apr 2022 21:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650835018
