Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCA939E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 09:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650964318;
	h=To:Subject:From:Message-Id:Date;
	bh=GxXPYg5ZnzN8nbNmea4JIUoeWwu0noYI/xZj1KoATmA=;
	b=Yv0tnOirvdfVloLbiToR4oFyhFGe1Ntb2ndNVhlFJ3yhUrTCpyflRRlkS8B10M6s
	iri+jjeMdmff2PwYOvuXPR7f0dcb9gjvGYxyTkapLhjePnzA04v5T7e2p5GkAmqy5I1
	UA822WorbeKWjrxj0AFceZK+vHsjZkkqHvEfqa/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650964318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GxXPYg5ZnzN8nbNmea4JIUoeWwu0noYI/xZj1KoATmA=;
	b=LOgvCyhHT6ohWX/THiCNQp0JBkmccPVXdRfND6/MyRW4RtlvOqRcp4GYBmMD+3V4
	7tFWlVAHnI3gASwds+4zI5BRTJWTTZE8ra6WG1G5JRp4v6bzyWVvLIdQSnXWqtKlAnL
	SgWeEAsLg+nRvs0KPl1oLm6rBav1qg1zx41DPHig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806524483c-d2d77d9d-c6cf-4b0f-875e-c7fd743f80c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0b40af32dbab649f85295be0523938bd5c4b71e6ef0163e0a165ca506995f1d
Date: Tue, 26 Apr 2022 09:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650964318
