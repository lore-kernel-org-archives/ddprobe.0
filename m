Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6741105
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658249212;
	h=To:Subject:From:Message-Id:Date;
	bh=+bOHVHgnjMJMhCGEiXUu5bCRLD+s5cEc/2abdhXcWiA=;
	b=fG9wrvCWw8pB66UJ7f7Rn/AWloMaPl1QUvhMfqD7lYMEg7jttmsFYZn/XviG5HbW
	FdagfCoPHLUN8eSXMryUfS9lLGCTgSp9OSKhJPVgEVipRUM863+TOKgxxKBzXTNRUEm
	lfBXWlzp3CS/gLBiM/n9Pf4hyuYyYuvVm3VwGX9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658249212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+bOHVHgnjMJMhCGEiXUu5bCRLD+s5cEc/2abdhXcWiA=;
	b=aEscIN4Pc/kyzkBD37slov5BZestgQUDVaUI4Ul8mHEm/6A5wttiMmTdLXnWwuZJ
	MihNZxa3AhqQkxlcdjNze55HtkCQrJlteEy5ShI4uXWW7EyQrWZHPadtyAHVTICfakd
	Um9eDVmdu3gSt8fU1Mfz7GAQj6I56iDWNRYmg4ic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182175af18e-5fdb54cc-fb0b-430d-9635-e80cb60261ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7dd4a0fd45dc8ea496ca21994148bd3b1866642424c078ed23c85b1ad39bb61e
Date: Tue, 19 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658249212
