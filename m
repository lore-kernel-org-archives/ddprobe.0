Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10CC2F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647198985;
	h=To:Subject:From:Message-Id:Date;
	bh=KH+v4ZfQWYE8f8ecOU6Rb1VtYi+q+bRqAYBiPTOfpNM=;
	b=KeFDZh0I6bXM3qdvw+4n2l6CkQpdVxzHF+vTKySEFqRTDJcKSmgqTunKbGYkA25b
	JEC5+425Ok7f6M5pgfsDn9eO4pXWfZX3OrlkuDJ5qvo4xGKe0UK6W+a0FvKjvsfKM/A
	oDL9ePXuwetwF5uADfgv9ckvuMmWbuQya8IYZIRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647198985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KH+v4ZfQWYE8f8ecOU6Rb1VtYi+q+bRqAYBiPTOfpNM=;
	b=CokDt5CeYcmXXRTnCP8Eeg/kYeDYrt7b7DT8eD+bz45r4SuPFFCwECwZmE8nBEiz
	H0QJrpb/Vc/QvCUyoAGX2zMGa5mpo01sNvXFPIiHYK4Utn/T0IAq6uGcYycWzPcY0Au
	tfRSdt3aQrptRXtFWqfh8D8Y5gbttGrU1AVSyvwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84b5da34-4b92b12a-7fe7-4d1b-8df8-81479db3f984-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8bc648366a983613bdd0be5b9aa09dc178af47613dbd02a716eff8b8eab1b12
Date: Sun, 13 Mar 2022 19:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647198984
