Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13759363
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 03:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650942358;
	h=To:Subject:From:Message-Id:Date;
	bh=z/+rOq2iAVkwWBj5w+X4PuwbEAr8R151FA6enqf6vss=;
	b=N+7j/sc0IK9SrxRRh4mFefx4o50Ga1BX4ZmXQBJlh0bCg0qNRndI0rDyXUqvUWvs
	LybUVPxRKtE5M9RMU+6xKN3/++XfEp/ElfAQ27/JD2NgBBjYtv/IMqLzNBxK9GFJgLq
	mZUcyF+P9P28RhqJFEcfK8UY7IL4zdyca+JLuado=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650942358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z/+rOq2iAVkwWBj5w+X4PuwbEAr8R151FA6enqf6vss=;
	b=CowMvS00hmPOxIK09AV6xKf7UgOArEzZx49V8etoAXWvFVsgTK0APT6LHcU6JMEy
	NvDlprC6ozuV0KzTHYYvzTPvueyc2y5CaAbKpE3HLw7UJTCYTCcbH73e8HNIxgZw2jR
	iumDBfasxT2RX5O/j4rQFJpO6SggSc8E5/x9zMWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018063d53317-7e3e974d-05d6-4a43-9290-4a2b40538f32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25988de60b64867ec76d11f0581ca666b7443f07a9fceccf2db313350e499753
Date: Tue, 26 Apr 2022 03:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650942358
