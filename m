Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94154A50
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647982884;
	h=To:Subject:From:Message-Id:Date;
	bh=Oulz5Sj/YB27Vcdc3gwCHrevbYU8GVjIgaLJZx4miFk=;
	b=H662jwBRZG1EpAI6myICCBE58PGSczJTw0GU7YtNpDFL097/nlfWPZZHmmOryEye
	8flR74IXgSQbIVOpjU/IKfMSu4orUvux1X+DzI4s9oCDx6CL2l0YD3VpfRp69RJvGtk
	kTukFsp5fomOiAS922MYiA7SGoqD2HRs5J4Hjec0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647982884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Oulz5Sj/YB27Vcdc3gwCHrevbYU8GVjIgaLJZx4miFk=;
	b=GmstmOUpuFaQYAnR5qnyEhdr7W8mYK7OFzmild/UJNZ3BP1CpEkY+9z26ja0wOAe
	rUn1CzxxzYAFLwvOmUGbZGyj9Xp5MrO9T3MaONdRyIwim6VgjaFCAN3iMK+latpDUFD
	bm0mXcAQEPyhE5io7fLKMReuHnVFfNgqoOv1HBAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb36f3784-d77bd82c-f5a9-496a-abcd-3230eb1ef99e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13392e6feb96f03297610f1ed4b5048a038013c0a7c8e526f3a713eac717eb1b
Date: Tue, 22 Mar 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647982884
