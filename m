Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DCC17ACB
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 14:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D2FC433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 14:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683642665;
	bh=od8q4WwgHw46usoi8CI/iRIQU68ldiPRf8UqXhXgdeI=;
	h=To:Subject:From:Date:From;
	b=fBiKhQRxlDf0lyzpVZKQtPypmuwDB609LbbaTrFhbO1Wsh1071LJQK1UGHaG0ebig
	 H5nSIftZVHhNn6lZ87YEpExbYC/VWsNkK7NoJkmHL28roKfHFDuIQJxEJUK9PIolHX
	 G9Eplbuezz/7UDNISK1W4NOCis6a/ifGVaXYZ0RhdHpjvIQfW02SxwMRvFJqgyQps5
	 yX9/jvEpDD5qAXTzJRNtYQvhuO9I/ZLb1325vBvdQRRMexPhfLr8ESs0Mb1cdOjnN6
	 n8IgShV+/XISnwfTM7B5mcdPlAV+81kxWv6m48pTg8Wzi1hhcqMn3eIZGouhe7ksk6
	 2ijBoCdVYQy/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3472C77B75
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 14:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168364266572.23910.11443273715170814800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2548c960726b4b7601919f433555435a232f1c032e66d5e593e2401416a711b
Date: Tue, 09 May 2023 14:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683642665
