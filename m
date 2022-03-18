Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00DD4C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647613285;
	h=To:Subject:From:Message-Id:Date;
	bh=s3+F2DHnxQ9h4q7HvHDRn23sCupkVRojQW/Fus28Sso=;
	b=cDygwJEUaoC9LJD3BBK4NPTWyjl9zpHZp6JZSihVMs3mG/VbIK5uiGbJRQoGL++P
	ZF/OQA99oGzu6kzEi5+GwMpVPD9q4UwsuMcu+TUu5iIE93LlnoEnCJwzhF+1KgWjvzn
	yFJ95BHdEOHqy0VtcVXrUErqsavvkZWnllHxsrU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647613285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s3+F2DHnxQ9h4q7HvHDRn23sCupkVRojQW/Fus28Sso=;
	b=QEa4edhOGSe3nCZ+KcIMv4d7Y1lYUxrqFwAESdmFu7fN121MuUNi9cE3Ov+eZiDd
	Cw+cN9JBwj0s/W29Ce3I/65K7VNEci7mRuJQM6s6vQeabu8BBsd0VZL57SfPjjh74kO
	PL5c1xHx5UXolGd48jNOH8stj9A9lOZRtf+J4u3Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d679181-c041ebcb-35c2-4771-af5b-5971e48f9add-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e64f59ce3948509fb4317146c0ae29a6aca852867b81f097169735286491633
Date: Fri, 18 Mar 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647613284
