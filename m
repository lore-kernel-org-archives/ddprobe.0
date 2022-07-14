Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9BC192
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657761413;
	h=To:Subject:From:Message-Id:Date;
	bh=rgrJ+pPMXtkRZvLa3mRKlFZqDeMKBPQQsns+0WXlsLY=;
	b=IbC7hjHQtvprYVUb4Ofg1cpshJAP0hoxN9H7FPu22gNIyTIkxXDiuFjc7YPtkThf
	8oc2AWVhXON2dlg4lDK8RP+J1lD4A9XZM+aRmEGrhzCiz0tcL6eFqXwqRc4QRhk9Ja+
	N3d9LJek9JJL0ZGwI5ca1c6WQWMYJlmJ88U3MUlg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657761413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rgrJ+pPMXtkRZvLa3mRKlFZqDeMKBPQQsns+0WXlsLY=;
	b=XhSwKRtEVtX5gNtStB1tfMJOB+bRNFUK7bsyDXtCC3YWnAmMI7ivI5j7iFIld86D
	I0HgPQCPesNOzkrCmEtMxql0OwJZFvzYFEnCuKo75gPV/G8AhdfRG9uTgB7xEQpUtV4
	S5kZnPGf+ER7xEXkNoZnIamDuxIB8YwYVkXCGOCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa47b501-51c7843b-331b-41bc-9cbc-8e9205367e65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6abbe570597060d58af068c096f7ef1c218ac99909aee607f0c00779667b666
Date: Thu, 14 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657761412
