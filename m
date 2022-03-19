Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641B8163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647701184;
	h=To:Subject:From:Message-Id:Date;
	bh=6PN27eN8lVBEHZ3mgjL6OCQc0hTu9iYtNA5fiSWry9g=;
	b=Ul6CSbDEZBp8FpbGzYj1/Iwvk+RwsulqxNUp9IahDi0AG6Zih48B2FsMTeFmiCE9
	Rla6UTWhtIvB0TDfPa2VtP/PsoYNBRx56bBmzk1JJHFH9vXWHuZpoOcJ8Na96yRsgzc
	tz/BHxVcsmXPbIpnumfMSrnIbAzJFPSupnWd5y2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647701184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6PN27eN8lVBEHZ3mgjL6OCQc0hTu9iYtNA5fiSWry9g=;
	b=XmJx12nqvj/AVRAMGA4/gy6576humlS5t/Jqe6sjMMmyaZBTmWFFbrwADZOO/yxc
	EtagNp+bcwM15gMyUopnBqDxeTlE5fm74Npygr88yVoCNx9yNNQvzv+CWFuz7nBgtkO
	wvuQYgc91c1wTMfB1H84YPRMDZFd+qxMQbQntD10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2a4d0ed-69b97fa9-3c55-460a-92b0-34e477e0e95d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c8bdd294d26b115dcacffba8452939c0babe99ee7cbb4bbfcc237df3c3236d5
Date: Sat, 19 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647701184
