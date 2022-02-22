Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B891364
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645505184;
	h=To:Subject:From:Message-Id:Date;
	bh=e4zozdgPYf+bjriYvdW3ROdwvvSKgnXzOelvSa/bGk8=;
	b=U6oG2BGCQYzvrOSMXPD0D605yFqWarFwmJ8umBPbOP44G2ec8o6T3t/eYl6ccnkd
	TgWyuijHQGypc7IisR/AUkDW3Afk8rxGi4S2stJBt1bBchtKaAcf9+lD/+xsfgkC38a
	PqsFB52OvszvWOUDVUJuDR3bWuSw6Amh0FTiDH+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645505184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e4zozdgPYf+bjriYvdW3ROdwvvSKgnXzOelvSa/bGk8=;
	b=R/9EKLupSPPJiUqZhQ9hgOuGNSnJOM6nS3qeQhj8y0REoZOZqYwpgAV3Z5l4Zg2K
	Kj0vzw/DbuYUei9fUW8xVb57rrFMevXkYPNtQ/gDgvUcl8Y1rQCGbHgag68RnOclIU9
	hoL45a+CGSZvDpqdwzVNIw7SBrBgr5xAUn5caW4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1fc083fc-d5debe33-63b7-4952-a6f8-1cfe4aaaaeff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10a7024836d80cd1863ccd30479ab8fea30aa970e1969e4c334386de26b5df15
Date: Tue, 22 Feb 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645505184
