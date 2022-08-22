Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566357B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661173852;
	h=To:Subject:From:Message-Id:Date;
	bh=I+Sb4+CK8a9iSHgDDKa+4Xi3l+8QwsK3TMVRUjXCC/g=;
	b=CqSrmjAjCRS5E/BehSitWtP+oAgsnEBzpSdO7UccBnSZgpJvKSggD18QJy6gofH+
	ak0EZgoAOUxgjJs/EEZhEiqV6E6xfXaDjNTohtX/BdBdIPveVYswrSwJWkkN9+8mKJv
	rKHHO6Z1PtuoAkUAUvOixMFEYySg8CUohiYQipuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661173852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I+Sb4+CK8a9iSHgDDKa+4Xi3l+8QwsK3TMVRUjXCC/g=;
	b=ef69WTpCjrGlZWF/gHmhZKghTAHtitL3xLVURMpw/F/5wSp2b6FFf8AwtmQskhpd
	1baxdGFM36eiUgT9D4ZVXJFe6w9stwq6j4bvVNWSmu7XnopCCMN/8p3RTbHNMoH9pOV
	pKY3dB1ZC4VcrpQ75PMZhEt/sBMJc5/wlMqOthEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5ad6999-5dc8652b-8a6f-4b00-8fbe-e1c3488bef9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cebcb41366bfb41cf9d103d359004b9590bdd6783e3eb741e01624fee7af8505
Date: Mon, 22 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661173852
