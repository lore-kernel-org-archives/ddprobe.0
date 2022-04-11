Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D280710E9
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 02:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649645878;
	h=To:Subject:From:Message-Id:Date;
	bh=AZCxwbTamw35yZmZt8LL1VQAJ6O4QgPhQIOxAnDXIoM=;
	b=bLxrZ6KuB5SNkpqJXIDu5oPG9EoGp7/KCr08+Bfk/Zq9js5TAevK4QYbKAXdPt/s
	vHMRptdo1+XWklrjAjH5HEcgFAqUuLQjIcurWTXCVQbxX4mxNuAmsWvXo2TN4C6u2mX
	UAGqCnMkUdwNr19jS9x4L5E3nkKfLu5nZ7v3aRKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649645878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AZCxwbTamw35yZmZt8LL1VQAJ6O4QgPhQIOxAnDXIoM=;
	b=I6xhA2KjQowTxv//IK5IEnnniULc4gfdiuvUljkybh9sXYt2bEKTL0KNSWc6W3lW
	hUZOO/WriS8SFkblGKN5BcKOCQ0O4G/illBt+8g76SCUCq0vri7+gmrzvvCSvwDsKbO
	Qai1uGl23MmrHz3WEwhZMtipForPlOlyX9/L74zo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180168e7bbf-0c08d70a-8e08-45b1-bb01-d3808350bb85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f405473b80fe898a5b7c37d60c3a77bb8b7743c19358d1048a391169868736a
Date: Mon, 11 Apr 2022 02:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649645878
