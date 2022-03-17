Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DFB2F3A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 04:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647491185;
	h=To:Subject:From:Message-Id:Date;
	bh=JZdLrI7GVqoOuZN0uHUSb9JStiNUpqKazbPcVkTKgZA=;
	b=RFTz56XT/T9GoJ+kp2UrGJ5cN6lcSshvGgsN6oqYygcn+PgvH3U0RcwGROJbLSns
	vFwePEeYoCfkt7cueb36UzdawvTSO4bXmJ4ru6H1imj+zqxVkSx/ATtm0vAHsq4EM5z
	fOrQQewJUWjawoNRtbOzKmIa6DBkxxmnx88DrhKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647491185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JZdLrI7GVqoOuZN0uHUSb9JStiNUpqKazbPcVkTKgZA=;
	b=ORbwBdAvMXlKPiXPuAEJjdYlFDUCwQdId+1AFtksmmFdmlviVXJ6WIKkdcGj0USL
	OQ9BXhgjPwalcNOlpUgdV+J7lOe0FBPKzUE3jZKzVATjKYZcrYm06se+Qi/IPMPiDEH
	3tzersSOn5kdxI1bBgLQv/Jw14WVFkYh/UXTxTJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f962078b2-9e38fa6c-9fc1-47e5-ac92-8e3d457a8f7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3373f5d5aa7c6b29674ce6ceb860a3ca52a6070df175b131ce765abcef6ee13a
Date: Thu, 17 Mar 2022 04:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647491184
